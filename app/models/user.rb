class User < ActiveRecord::Base
	has_secure_password
	has_many :comments
	has_many :courses
	has_many :lessons, :through => :courses
	
end
