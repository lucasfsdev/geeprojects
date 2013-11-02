class TasksController < ApplicationController

    def index
        @tasks = Task.where("done IS ?", nil).order("projectid DESC")
    end
    
    
    def nome_projeto(id_task)
        @p = Project.find(id_task)
        @p.title
    end
    def show
        @task = Task.find(params[:id])
    end
    
    def new
        
    end
    
    def destroy
        @t = Task.find(params[:id])
        @t.done = true
        @t.save
        redirect_to action: "index"
    end
    
    def create
        @task = Task.new(task_params)
        @task.save
        redirect_to @task
    end
    
    
    private
    def task_params
        params.require(:task).permit(:name, :description)
    end
    
    helper_method :nome_projeto
end
