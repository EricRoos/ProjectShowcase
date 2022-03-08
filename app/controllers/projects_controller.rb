class ProjectsController < ApplicationController
  before_action :set_project, only: %i[ show edit update destroy like dislike ]

  # GET /projects
  def index
    @projects = current_user.projects
  end

  # GET /projects/1
  def show
  end

  # GET /projects/new
  def new
    @project = Project.new
  end

  # GET /projects/1/edit
  def edit
  end

  #POST /projects/1/like
  def like
    if current_user.voted_up_on?(@project)
      @project.unliked_by current_user
    else
      @project.liked_by current_user
    end
    @project.touch # for caching, since acts as votable doesnt make this easy without adding cols
    redirect_to request.referer || @project
  end

  #POST /projects/1/dislike
  def dislike
    if current_user.voted_down_on?(@project)
      @project.undisliked_by current_user
    else
      @project.downvote_from current_user
    end
    @project.touch # for caching, since acts as votable doesnt make this easy without adding cols
    redirect_to request.referer || @project
  end

  # POST /projects
  def create
    @project = current_user.projects.build(project_params)

    if @project.save
      redirect_to [:edit, @project ], notice: "Project was successfully created."
    else
      render :new, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /projects/1
  def update
    if @project.update(project_params)
      redirect_to @project, notice: "Project was successfully updated."
    else
      render :edit, status: :unprocessable_entity
    end
  end

  # DELETE /projects/1
  def destroy
    @project.destroy
    redirect_to projects_url, notice: "Project was successfully destroyed."
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_project
      @project = Project.find(params[:id])
      authorize @project
    end

    # Only allow a list of trusted parameters through.
    def project_params
      params.require(:project).permit(:title, :description)
    end
end
