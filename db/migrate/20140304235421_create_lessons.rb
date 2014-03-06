class CreateLessons < ActiveRecord::Migration
  def change
    create_table :lessons do |t|

      t.belongs_to :course
      t.datetime :lesson_date
      t.timestamps
    end
  end
end
