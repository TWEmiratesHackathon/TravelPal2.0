class AddMissionStoryIdToTransaction < ActiveRecord::Migration
  def change
    add_column :transactions, :mission_story_id, :integer
  end
end
