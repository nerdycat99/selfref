class TasksController < ApplicationController

  def new
    @task = Task.new
  end

  def create
    Task.create(task_params)
    redirect_to root_path
  end


  def task_params
    params.require(:task).permit(:title, :description)
  end


end
