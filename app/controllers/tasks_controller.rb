class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  def view
  end

  def add
  end

  def edit
  end

  def remove
  end
end
