class CommentsController < ApplicationController

	def create
		comment = Comment.new
		comment.lesson_id = params[:lesson_id]
		comment.user_id   = session[:user_id]
		comment.content   = params[:content]
		comment.save

		redirect_to lesson_path(params[:lesson_id])
		return
	end

end
