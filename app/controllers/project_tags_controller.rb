class ProjectTagsController < ApplicationController
  before_action :set_project, only: %i[ index create new destroy ]
  before_action :set_project_tag, only: %i[ show edit update destroy ]

  # GET /project_tags
  def index
    @project_tags = @project.tag_list.reverse
  end

  # GET /project_tags/1
  def show
  end

  # GET /project_tags/new
  def new
  end

  # GET /project_tags/1/edit
  def edit
  end

  # POST /project_tags
  def create
    @project.tag_list << params[:tag]
    @project.save
    redirect_to [@project, :project_tags] 
  end

  # PATCH/PUT /project_tags/1
  def update
    if @project_tag.update(project_tag_params)
      redirect_to @project_tag, notice: "Project tag was successfully updated."
    else
      render :edit, status: :unprocessable_entity
    end
  end

  # DELETE /project_tags/1
  def destroy
    @project.tag_list.remove(params[:id])
    @project.save
    redirect_to [@project, :project_tags] 
  end

  private
    def set_project
      @project = Project.find(params[:project_id])
    end
    # Use callbacks to share common setup or constraints between actions.
    def set_project_tag
    end

    # Only allow a list of trusted parameters through.
    def project_tag_params
      params.fetch(:project_tag, {})
    end
end
