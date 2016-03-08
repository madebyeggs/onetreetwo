class ProjectsController < ApplicationController
  before_action :authenticate_user!, :except => ["index", "show"]
  
    def new
      @project = Project.new
    end

    def create
      @project = Project.create(project_params)
      respond_to do |format|
        format.html { redirect_to cms_path }
      end
    end

    def index
      @Projects = Project.common_order
    end

    def edit
      @project = Project.find(params[:id])
    end

    def update   
      @project = Project.find(params[:id])
      if @project.update_attributes(project_params)
        respond_to do |format|
         format.html { redirect_to cms_path }
        end
      else
        render :action => 'edit'
      end
    end

    def destroy
      @project = Project.find(params[:id])
      @project.destroy
      respond_to do |format|
        format.html { redirect_to cms_path }
      end
    end
    
    def project_params
      params.require(:project).permit(:title, :brand, :agency, :type_of_work, :client, :url)
    end

end