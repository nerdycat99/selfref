class CreateDependencies < ActiveRecord::Migration[5.0]
  def change
    create_table :dependencies do |t|
      t.integer :task_id
      t.integer :independent_task_id
      t.integer :dependent_task_id
      t.timestamps
    end
  end
end
