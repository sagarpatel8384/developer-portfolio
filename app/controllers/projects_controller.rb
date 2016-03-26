class ProjectsController < ApplicationController
  def new
    @project = Project.new
    @project.categories.build
  end

  def create
    @project = Project.new(project_params)
    if @project.save
      flash.now[:success] = 'You\'ve successfully created a project.'
      binding.pry
      redirect_to root_path
    else
      flash.now[:error] = 'Hmmm. Looks like something went wrong.'
      render :new
    end
  end

  private

  def project_params
    params.require(:project).permit(
      :title, :repo_url, :host_url, categories: [:name], tag_ids: []
    )
  end
end
