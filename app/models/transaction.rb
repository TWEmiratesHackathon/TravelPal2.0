class Transaction < ActiveRecord::Base
  attr_accessible :accomplish_date, :mission_story_id, :rank, :task_id, :tx_image, :user_id, :weather

  has_attached_file :tx_image, :styles => { :large => "500x500>", :medium => "300x200>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"

  belongs_to :user
  belongs_to :mission_story
  belongs_to :task
end
