class ProjectsController < ApplicationController
  before_action :set_project, only:[:edit, :update, :destroy]
  def index
    @projects = Project.all
  end

  def new
    @project = Project.new
  end

  def create
    @project = Project.new(projects_params)
    if @project.save
    redirect_to projects_path
  else
    render 'new'
  end
end

  def edit
  end

  def update
    @project.update(projects_params)
    redirect_to projects_path
  end

  def destroy
    @project.destroy
    redirect_to projects_path
  end

  private
  def projects_params
    params.require(:project).permit(:title,:content)
  end

  def set_project
    @project = Project.find(params[:id])
  end

end