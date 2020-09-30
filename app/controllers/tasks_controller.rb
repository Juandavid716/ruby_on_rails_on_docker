class TasksController < ApplicationController
    # skip_before_action :require_valid_user!
    # before_action :reset_session
    # def index
    #     @tasks = Task.all
    # end

    # #GET 
    # def new
    #     @task = Task.new
    # end

    # def init
    # end
    # #POST to save task in DB
    # def create
    #     @task = Task.new(task_params)
    #     if @task.save
    #         #TODO: Add flash message with success
    #         redirect_to tasks_path
    #     else
    #         #TODO: Add flash message with errors
    #         render :new
    #     end
    # end

    # def destroy
    #     @task = Task.find(params[:id])
    #     @task.destroy
    #     redirect_to tasks_path
    # end
    # private

    # def task_params
    #     params.require(:task).permit(:title, :description)
    # end
end
