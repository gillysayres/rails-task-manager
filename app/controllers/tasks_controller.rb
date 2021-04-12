class TasksController < ApplicationController
  before_action :task_params, only: [:show, :edit, :update, :destroy, :create]
  def index
    @tasks = Task.all
  end

  def show
    @task = Task.find(task_params)
  end

  def new
    @task = Task.new
  end

  def create
    @task = Task.new(task_params)
    @task.save
  end

  private

  def task_params
    params.require(:task).permit(:title, :details, :completed)
  end
end
