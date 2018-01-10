class Dependency < ApplicationRecord
  belongs_to :task
  belongs_to :independent_task, class_name: 'Task'
end
