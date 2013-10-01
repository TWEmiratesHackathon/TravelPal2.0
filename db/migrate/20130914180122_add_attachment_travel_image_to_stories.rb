class AddAttachmentTravelImageToStories < ActiveRecord::Migration
  def self.up
    change_table :stories do |t|
      t.attachment :travel_image
    end
  end

  def self.down
    drop_attached_file :stories, :travel_image
  end
end
