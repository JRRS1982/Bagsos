# frozen_string_literal: true

class TasksController < ApplicationController
  def index
    if current_user.user_type == 'volunteer'
      @tasks = Task.order('created_at DESC')
    else
      redirect_to '/tasks/new'
    end
  end

  def new
    if current_user.user_type == 'beneficiary'
      @task = Task.new
    else
      redirect_to '/tasks'
    end
  end

  def create
    @task = Task.create(task_params)
    if @task.valid?
      redirect_to '/tasks/new'
      flash[:success] = 'Task successfully listed'
    else
      redirect_to '/tasks/new'
      flash[:danger] = @task.errors.full_messages.join('<br>')
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
