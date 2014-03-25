class ListsController < ApplicationController

  def index
    @list = List.new
    @lists = List.all
    @task = Task.new
   
  end

  def create
    List.create(list_params)
    redirect_to root_path
  end

  def update
    list = List.find(params[:id])
    list.update(list_params)
    redirect_to root_path
  end

  def destroy
 #   binding.pry
    list = List.find(params[:id])
    list.destroy
    redirect_to root_path
  end

  private
  def list_params
    params.require(:list).permit(:name)
  end
end