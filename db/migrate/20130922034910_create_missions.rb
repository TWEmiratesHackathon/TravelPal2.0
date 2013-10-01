class CreateMissions < ActiveRecord::Migration
  def change
    create_table :missions do |t|
      t.string :name
      t.text :description
      t.integer :task_count
      t.integer :count
      t.integer :rank

      t.timestamps
    end
  end
end
