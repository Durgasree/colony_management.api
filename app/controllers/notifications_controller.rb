class NotificationsController < ApplicationController


	before_action :authenticate_request!
 	before_action :response_token

  def response_token
    response_token = session[:response_token] || {}
  end


	def create
		if params[:content].present?
			@current_user.notifications.create(content: params[:content])
			response = {success: true,message: "Notice posted successfully."}
			render json: response
		else
			render json: {success: false,error: "Content is required"}
		end
	end


	def index
		@notifications = Notification.all	
		render json: {success: true,notifications: @notifications}
	end


end
