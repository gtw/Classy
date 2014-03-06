class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name_first
      t.string :name_last
      t.string :account_type

      t.timestamps
    end
  end
end
