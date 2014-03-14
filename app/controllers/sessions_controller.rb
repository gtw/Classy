class SessionsController < ApplicationController

	skip_before_action :require_login, only: [:create, :new]
	
	def destroy
		reset_session
		redirect_to root_url, notice: "Goodbye!"
	end

	def create
		user_name = params[:email]

		user = User.find_by(email: params[:email])
		if user_name
			if user.authenticate(params[:password])
				session[:user_id] = user.id
				redirect_to root_url, notice: "Welcome Back, #{user.name_first} #{user.name_last}"
			else
				redirect_to root_url, notice: "Bad Password"
			end
		else
			redirect_to root_url, notice: "Unknown User Name"
		end
	end
end
