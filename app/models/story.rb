class Story < ActiveRecord::Base
  belongs_to :user
  attr_accessible :location, :story_date, :story_entry, :story_photo_url, :story_time, :user_id, :travel_image
  validates :location, :presence => true
  has_attached_file :travel_image, :styles => { :medium => "300x200>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
end
