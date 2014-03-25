class TasksController < ApplicationController
  def create
    list = List.find(params[:list_id])
    list.tasks.create(task_params)
    redirect_to root_path
  end

  private
  def task_params
    params.require(:task).permit(:description)
  end

end