class ProjectsController < ApplicationController
  def show
    @project = Project.find(params[:id])
  end

  def create
    @project = Project.new(project_params)

    if params[:project][:title]
      render :new
    else
      flash.now[:alert] = 'Title is required.'

      render :new
    end
  end

  def edit
    @project = Project.find(params[:id])
  end

end
