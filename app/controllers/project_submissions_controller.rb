class ProjectSubmissionsController < ApplicationController
  before_action :set_project, only: %i[ index create new ]
  before_action :set_project_submission, only: %i[ show edit update destroy transition ]

  # GET /project_submissions
  def index
    @project_submissions = ProjectSubmission.all
  end

  # GET /project_submissions/1
  def show
  end

  # GET /project_submissions/new
  def new
    @project_submission = ProjectSubmission.new
  end

  # GET /project_submissions/1/edit
  def edit
  end

  # POST /project_submissions
  def create
    @project_submission = @project.project_submissions.build(user: current_user)

    if @project_submission.save
      redirect_to @project_submission, notice: "Project submission was successfully created."
    else
      render :new, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /project_submissions/1
  def update
    if @project_submission.update(project_submission_params)
      redirect_to @project_submission.project, notice: "Project submission was successfully updated."
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def transition
    transition_event = params[:project_submission][:state]
    contains_event = @project_submission.aasm.events(permitted: true).map{|e| e.name}.include?(transition_event.to_sym)
    if contains_event && @project_submission.aasm.fire!(transition_event)
      redirect_to @project_submission.project, notice: "Project submission was successfully updated."
    else
      render :edit, status: :unprocessable_entity
    end
  end
  # DELETE /project_submissions/1
  def destroy
    @project_submission.destroy
    redirect_to [@project, :project_submissions], notice: "Project submission was successfully destroyed."
  end

  private
    def set_project
      @project = Project.find(params[:project_id])
    end
    # Use callbacks to share common setup or constraints between actions.
    def set_project_submission
      @project_submission = ProjectSubmission.find(params[:id])
      @project = @project_submission.project
    end

    # Only allow a list of trusted parameters through.
    def project_submission_params
      params.require(:project_submission).permit(:url)
    end
end
