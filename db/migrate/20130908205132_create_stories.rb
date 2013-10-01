class CreateStories < ActiveRecord::Migration
  def change
    create_table :stories do |t|
      t.string :location
      t.date :story_date
      t.time :story_time
      t.text :story_entry
      t.string :story_photo_url
      t.integer :user_id

      t.timestamps
    end
  end
end
