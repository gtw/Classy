class UsersController < ApplicationController

	def show
		@user = User.find(params[:id])
		if session[:user_id] != @user.id
			redirect_to root_url, notice: "Cannot access other user pages"
		end
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
end
