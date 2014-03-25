class CompletedTasksController < ApplicationController
  def create
    task = Task.find(params[:id])
    task.update(done:true)
    redirect_to root_path
  end

end