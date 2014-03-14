class UsersController < ApplicationController

	skip_before_action :require_login, only: [:create, :welcome, :new]

	def show
		# if session[:user_id].blank?
  # 			redirect_to welcome_url
  # 			return
  # 		elsif User.find(session[:user_id]).blank?
		# 	redirect_to welcome_url, notice: "Unrecognized User ID, please sign back in"
		# 	return
		# else
		@user = User.find(session[:user_id])
		@courses = @user.courses
		# end
	end

	def create
		user = User.new
		user.name_first = params[:name_first]
		user.name_last  = params[:name_last]
		user.email      = params[:email]
		user.password   = params[:password]
		user.password_confirmation = params[:password_confirmation]
		user.account_type = params[:account_type]
		user.save
		session[:user_id] = user.id 
		redirect_to root_url
	end

  	def welcome
  	end

end
