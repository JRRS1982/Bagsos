class TasksController < ApplicationController

  def index
    @tasks = Task.order('created_at DESC')

  end

  def new
    @task = Task.new
  end

  def create
    @task = Task.create(task_params)
    redirect_to '/'
  end

private

def task_params
  params.require(:task).permit(:title, :description)
end

end

