class TasksController < ApplicationController

  def index
    @tasks = Task.order('created_at DESC')
  end

  def new
    @task = Task.new
  end

  def create
    @task = Task.create(task_params)
    if @task.valid?
      redirect_to '/tasks/new'
      flash[:success] = "Task successfully listed"
    else 
      redirect_to '/tasks/new'
      flash[:danger] = @task.errors.full_messages.join("<br>")
    end
  end

  def show
    @task = Task.find(params[:id])
  end

private

def task_params
  params.require(:task).permit(:id, :title, :description)
end

end

