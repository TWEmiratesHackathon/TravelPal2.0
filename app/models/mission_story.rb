class MissionStory < ActiveRecord::Base
  attr_accessible :from_date, :like_count, :mission_id, :to_date, :user_id

  belongs_to :mission
  belongs_to :user
  has_many :transactions
end
