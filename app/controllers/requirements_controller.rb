class RequirementsController < ApplicationController
  before_action :set_project, only: %i[ index create new ]
  before_action :set_requirement, only: %i[ show edit update destroy ]

  # GET /requirements
  def index
    @requirements = @project.requirements
  end

  # GET /requirements/1
  def show
  end

  # GET /requirements/new
  def new
    @requirement = @project.requirements.build
    @requirement.story = ["So that", "Given", "When", "Then"].map{|str| "<b>#{str}</b>"}.join("<br/><br/>")
  end

  # GET /requirements/1/edit
  def edit
  end

  # POST /requirements
  def create
    @requirement = @project.requirements.build(requirement_params)

    if @requirement.save
      redirect_to [@project, :requirements], notice: "Requirement was successfully created."
    else
      render :new, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /requirements/1
  def update
    if @requirement.update(requirement_params)
      redirect_to [@requirement.project, :requirements], notice: "Requirement was successfully updated."
    else
      render :edit, status: :unprocessable_entity
    end
  end

  # DELETE /requirements/1
  def destroy
    @requirement.destroy
    redirect_to project_requirements_url(@requirement.project), notice: "Requirement was successfully destroyed."
  end

  private
    def set_project
      @project = Project.find(params[:project_id])
    end
    # Use callbacks to share common setup or constraints between actions.
    def set_requirement
      @requirement = Requirement.find(params[:id])
      authorize @requirement.project
    end

    # Only allow a list of trusted parameters through.
    def requirement_params
      params.require(:requirement).permit(:story, :description, documents: [])
    end
end
