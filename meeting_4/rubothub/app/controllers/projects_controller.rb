class ProjectsController < ApplicationController

  def new

  end

  def create
    @user = User.find params[:user_id]
    if (@user.present?)

      @project = @user.projects.build(project_params)
      if (@project.save)
        redirect_to project_path(@project)
      else
        render "users/edit"
      end
    end
  end

  def edit
    @project = Project.find params[:id]
  end

  def show
    @project = Project.find params[:id]
  end

  def update
    @project = @current_user

    redirect_to(login_path) and return unless @project.present?

    if @project.update_attributes(project_params)
      redirect_to project_path @project
    else
      render :edit, status: :unprocessable_entity
    end
  end

  private 
    def project_params
      params.require(:project).permit(:title, :description)
    end
end
