class CoursesController < ApplicationController

	def show
		if Roster.where("course_id = ? AND user_id = ?", params[:id], session[:user_id]).count == 0
			redirect_to root_url
			return
		end
		@course = Course.find(params[:id])
		@user   = User.find(session[:user_id])
	end

	def create
		course = Course.new
		course.course_name = params[:course_name]
		course.year  = params[:year]
		course.grade_level = params[:grade_level]
		course.save

		roster = Roster.new
		roster.user_id = session[:user_id]
		roster.course_id = course.id
		roster.save

		redirect_to root_url
	end

	def edit
		@course = Course.find(params[:id])
	end

	def update
	    course = Course.find(params[:id])
	    course.course_name = params[:course_name]
	    course.year = params[:year]
	    course.grade_level = params[:grade_level]
	    course.save
	    redirect_to root_url
  	end

  	def destroy
  		course = Course.find(params[:id])
  		course.destroy
  		redirect_to root_url
  	end

  	def index
  		@user   = User.find(session[:user_id])
  		@courses = Course.all
	end
end


