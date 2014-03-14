class User < ActiveRecord::Base

	has_secure_password
	has_many :comments
	has_many :rosters
	has_many :courses, :through => :rosters
	has_many :lessons, :through => :courses
	
end
