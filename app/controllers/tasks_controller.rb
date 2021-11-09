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
    @task = Task.create(task_params)
    @task.save
    redirect_to tasks_path(@tasks)
  end

  def edit
  end

  def remove
  end


private

  def task_params
  params.require(:task).permit(:title, :details, :completed)
  end
end

#  def new
#     @restaurant = Restaurant.new
#   end

#   def create
#     @restaurant = Restaurant.new(restaurant_params)
#     @restaurant.save
#     redirect_to restaurant_path(@restaurant)
#   end
