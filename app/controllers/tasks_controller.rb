class TasksController < ApplicationController
  # before_action :set_task, only: [:show, :edit, :update, :destroy]

  def index
    @tasks_list = Task.all
    @status = ''
  end

  # show method
  def find
    @task = Task.find(params[:id])
  end

  def new
    @task = Task.new
  end

  def create
    task = Task.new(task_params)
    task.save
    redirect_to task_id_path(task)
  end

  def edit
    @task = Task.find(params[:id])
  end

  def update
    task = Task.find(params[:id])
    task.update(task_params)
    redirect_to task_id_path(task)
  end

  def destroy
    task = Task.find(params[:id])
    task.destroy
    redirect_to tasks_path, status: :see_other
  end

  private

  def task_params
    params.require(:task).permit(:title, :details, :completed)
  end

  # def set_task
  #   @task = Task.find(params[:id])
  # end
end
