class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.string :course_name
      t.integer :year
      t.string :grade_level
      

      t.timestamps
    end
  end
end
