class CreateMaterials < ActiveRecord::Migration
  def change
    create_table :materials do |t|

      t.belongs_to :lesson
      t.string :format
      t.string :type
      t.text :link
      t.timestamps
    end
  end
end
