# app/controllers/tasks_controller.rb

class TasksController < ApplicationController
  def index
    @tasks = ['Task 1', 'Task 2', 'Task 3']
  end

  def new

  end

  def create
    require 'pry'; binding.pry
    task = Task.new({
      title: params[:task][:title],
      description: params[:task][:description]
      })
      require 'pry'; binding.pry
    task.save
    require 'pry'; binding.pry
    redirect_to '/tasks'
  end
end

