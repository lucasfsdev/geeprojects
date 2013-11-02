class ProjectsController < ApplicationController
    def index
        @projects = Project.all
    end
    
    def destroy
    end
    def new
    end
    
    def show
        @project = Project.find(params[:id])
        @tasks = Task.find_all_by_id(params[:id])
    end
    
    def create
        @project = Project.new(project_params)
 
        @project.save
        redirect_to @project
    end
 
private
    def project_params
        params.require(:project).permit(:title, :description, 
        :start_date, :release_date, :created_by_user, :enterprise)
    end
end
