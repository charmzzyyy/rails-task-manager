class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  def show
    @task = Task.find(params[:id])
   end

  def new
    @task = Task.new
  end

  def create
    new_task = Task.new(task_params)

    if new_task.save
      redirect_to tasks_path(new_task)
    else
      render :new
    end
  end

  private

  def task_params
    params.require(:task).permit(:title, :detail, :completed)
  end
end
