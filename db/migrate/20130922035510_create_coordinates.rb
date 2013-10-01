class CreateCoordinates < ActiveRecord::Migration
  def change
    create_table :coordinates do |t|
      t.float :latitude
      t.float :longitude
      t.integer :task_id

      t.timestamps
    end
  end
end
