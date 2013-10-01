class Task < ActiveRecord::Base
  attr_accessible :answer, :count, :description, :hint, :information, :mission_id, :name, :rank, :score

  belongs_to :mission
  has_one :coordinate
  has_many :task_tagships
  has_many :tags, :through => :task_tagships
end
