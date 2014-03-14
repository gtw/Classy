class Lesson < ActiveRecord::Base

	has_many :materials
	has_many :comments
	belongs_to :course
	
end
