class PagesController < ApplicationController
  
  def home
  	if session[:user_id].blank?
  		redirect_to welcome_url
  		return
  	else
  		@user = User.find(session[:user_id])
  	end
  	
  	if @user.blank?
  		redirect_to welcome_url
  		return
  	end
  end

  def welcome
  end

end
