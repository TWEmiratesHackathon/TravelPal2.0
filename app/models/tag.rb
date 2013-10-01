class Tag < ActiveRecord::Base
  attr_accessible :name

  has_many :task_tagships
  has_many :tasks, :through => :task_tagships
end
