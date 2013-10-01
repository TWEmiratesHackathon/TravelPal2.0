class Mission < ActiveRecord::Base
  attr_accessible :count, :description, :name, :rank, :task_count

  has_many :tasks
  has_many :mission_stories
end
