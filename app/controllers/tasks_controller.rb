# frozen_string_literal: true

class TasksController < ApplicationController
  def index
    @tasks = Task.order('created_at DESC')
    # @tasks = Task.all
     @hash = Gmaps4rails.build_markers(@tasks) do |task, marker|
      marker.lat task.latitude
      marker.lng task.longitude
     end
  end

  def new
    @task = Task.new
  end

  def create
    @task = Task.create(task_params)
    redirect_to '/'
  end

  def show
    @task = Task.find(params[:id])
    # redirect_to "/#{tasks/task.id}"
  end

  private

  def task_params
    params.require(:task).permit(:id, :title, :description, :address, :latitude, :longitude)
  end
end
