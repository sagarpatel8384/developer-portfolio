class ProjectsController < ApplicationController
  before_action :require_login, except: :show
  before_action :find_project, except: [:new, :create]

  def new
    @project = Project.new
    @project.categories.build
  end

  def create
    @project = Project.new(project_params)
    if @project.save
      @project.users << current_user # REFACTOR
      flash.now[:success] = 'You\'ve successfully created a project.'
      redirect_to [current_user, @project]
    else
      flash.now[:error] = 'Hmmm. Looks like something went wrong.'
      render :new
    end
  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def project_params
    params.require(:project).permit(
      :title, :repo_url, :host_url, categories_attributes: [:name], tag_ids: []
    )
  end

  def find_project
    @project = Project.find(params[:id])
  end
end
