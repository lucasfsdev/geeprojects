class ProjectsController < ApplicationController
    def index
        @projects = Project.where("done IS ?", nil)
    end

    # marca o projeto como "FEITO" (coluna done) 
    # e redireciona para a lista de projetos
    def destroy
        p = Project.find(params[:id])
        p.done = true
        p.save
        redirect_to action: "index"
    end
    
    
    def new
    end
    
    # mostra o projeto que esta sendo solicitado pelo id
    # e tb busca as tarefas relacionadas ao mesmo
    def show
        @project = Project.find(params[:id])
        @tasks = Task.find_all_by_id(params[:id])
    end
    # cria um novo projeto
    # e redireciona para o projeto criado
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
