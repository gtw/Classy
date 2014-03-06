class Course < ActiveRecord::Base

	has_many :lessons
	has_many :materials, :through => :lessons
	has_many :students, :through => :rosters

end
