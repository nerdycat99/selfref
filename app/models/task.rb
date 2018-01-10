class Task < ApplicationRecord
  has_many :dependencies
  has_many :independent_tasks, through: :dependencies

  has_many :dependents, foreign_key: :independent_task_id, class_name: 'Dependency'
  has_many :dependent_tasks, through: :dependents, source: :task
end
