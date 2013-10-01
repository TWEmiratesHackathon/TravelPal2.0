class CreateTaskTagships < ActiveRecord::Migration
  def change
    create_table :task_tagships do |t|
      t.integer :task_id
      t.integer :tag_id

      t.timestamps
    end
  end
end
