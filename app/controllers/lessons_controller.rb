class LessonsController < ApplicationController

	def show
		@lesson = Lesson.find(params[:id])
		@user   = User.find(session[:user_id])
		@comments = Comment.where("lesson_id == ?", params[:id]).order(created_at: :desc)
	end

	def new
		@course = Course.find(params[:course_id])
	end
	
	def create
		lesson = Lesson.new
		lesson.title = params[:lesson_title]
		lesson.course_id  = params[:year]
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


end
