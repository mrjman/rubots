class ProjectsController < ApplicationController
  def show
    @project = Project.find(params[:id])
  end

  def create
    @user = User.find(params[:user_id])
    @project = @user.projects.build(project_params)

    if @project.save
      redirect_to project_path(@project), notice: 'Success!'
    else
      render :new, status: :unprocessable_entity
    end

  end

  def new
    @user = User.find(params[:user_id])
    @project = @user.projects.build
  end

  private
    def project_params
      params.require(:project).permit(:title, :description)
    end

end
