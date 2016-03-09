class ProjectsController < ApplicationController
  before_action :authenticate_user!, :except => ["index", "show"]
  
    def new
      @project = Project.new
    end

    def create
      @project = Project.create(project_params)
      respond_to do |format|
        format.html { redirect_to admins_path }
      end
    end

    def edit
      @project = Project.find(params[:id])
    end

    def update   
      @project = Project.find(params[:id])
      if @project.update_attributes(project_params)
        respond_to do |format|
         format.html { redirect_to admins_path }
        end
      else
        render :action => 'edit'
      end
    end

    def destroy
      @project = Project.find(params[:id])
      @project.destroy
      respond_to do |format|
        format.html { redirect_to admins_path }
      end
    end
    
    def index
      @projects = Project.rank(:row_order).all
    end

    def update_row_order
      @project = Project.find(project_params[:project_id])
      @project.row_order_position = project_params[:row_order_position]
      @project.save
      render nothing: true # this is a POST action, updates sent via AJAX, no view rendered
    end

    private
    # Use callbacks to share common setup or constraints between actions.
    def set_project
      @project = Project.find(params[:id])
    end
    
    def project_params
      params.require(:project).permit(:project_id, :title, :brand, :agency, :type_of_work, :client, :url, :image, :music, :row_order_position)
    end

end