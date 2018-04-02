class UserTasksController < ApplicationController
  before_action :authenticate_user!

  def create
    @task = Task.find(params[:task_id])
    @user_task = UserTask.new(task: @task, user: current_user)

    if @user_task.save
      redirect_to tasks_path, notice: 'Te lo Enjoyaste Mijo'
    else
      redirect_to tasks_path, alert: 'Algo pasó que no se enjoyó'
    end
  end


  # def edit
  # end


end
