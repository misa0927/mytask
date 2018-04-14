class ProjectsController < ApplicationController
  before_action :set_project, only:[:show,:edit, :update, :destroy, :toggle_status]
  def index
    @projects = Project.all
  end

  def show
  end

  def new
    @project = Project.new
  end

  def create
    @project = Project.new(project_params)
    if @project.save
    redirect_to projects_path
  else
    render 'new'
  end
end

  def edit
  end

  def update
    @project.update(project_params)
    redirect_to projects_path
  end

  def destroy
    @project.destroy
    redirect_to projects_path
  end

  def toggle_status
    @project.toggle_status!
    redirect_to @project, notice: 'Project was successfully updated.'
  end

  private
  def project_params
    params.require(:project).permit(:title,:content,:status,:limit)
  end

  def set_project
    @project = Project.find(params[:id] || params[:project_id])
  end

end
