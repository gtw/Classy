class RostersController < ApplicationController

	def create
		roster = Roster.new
		roster.course_id = params[:course_id]
		roster.user_id = session[:user_id]
		roster.save
		redirect_to root_url
	end

	def destroy
		roster = Roster.find(params[:id])
		roster.destroy
		redirect_to root_url
	end
end
