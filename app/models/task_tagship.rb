class TaskTagship < ActiveRecord::Base
  attr_accessible :tag_id, :task_id

  belongs_to :tag
  belongs_to :task
end
