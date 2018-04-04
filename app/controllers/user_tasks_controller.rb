class UserTasksController < ApplicationController
  before_action :authenticate_user!

  def index
    @user_tasks = current_user.user_tasks
  end


  def create
    @task = Task.find(params[:task_id])
    @user_task = UserTask.new(task: @task, user: current_user)
    if @user_task.save
      @user_task.completed = true
      redirect_to tasks_path, notice: 'Te lo Enjoyaste Mijo'
    else
      redirect_to tasks_path, alert: 'Algo pasó que no se enjoyó'
      @user_task.completed = false
    end
  end


  def update
    respond_to do |format|
    @user_task.completed = false
    redirect_to tasks_path, notice: 'DESENJOYADO CON ÉXITO'
    end
  end


end
