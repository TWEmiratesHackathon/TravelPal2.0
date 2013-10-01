class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :name
      t.text :description
      t.text :information
      t.integer :score
      t.text :hint
      t.integer :count
      t.float :rank
      t.integer :answer
      t.integer :mission_id

      t.timestamps
    end
  end
end
