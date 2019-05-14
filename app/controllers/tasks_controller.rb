class TasksController < ApplicationController

  def index
    
  end

  def new
    @task = Task.new
  end

  def create
    @task = Task.new(params.require(:task).permit(:title, :description))

    @task.save
    redirect_to '/'
  end
end
