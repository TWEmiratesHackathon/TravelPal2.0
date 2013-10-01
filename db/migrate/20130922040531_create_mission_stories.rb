class CreateMissionStories < ActiveRecord::Migration
  def change
    create_table :mission_stories do |t|
      t.integer :mission_id
      t.integer :user_id
      t.date :from_date
      t.date :to_date
      t.integer :like_count

      t.timestamps
    end
  end
end
