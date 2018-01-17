class DependenciesController < ApplicationController

  def new
    @task = Task.find(params[:task_id])
    @dependency = Dependency.new
  end

  def create
    task = Task.find(params[:task_id])
    task.dependencies.create(dependency_params)
 #   @dependency = current_task.dependencies.create(dependency_params)
    redirect_to root_path
  end


  private

  helper_method :current_task
  def current_task
    @current_task ||= Task.find(params[:task_id])
  end


  def dependency_params
    params.require(:dependency).permit(:independent_task_id)
  end

end
