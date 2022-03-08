class ProjectSearchController < ApplicationController
  def new
  end

  def create
    @projects = Project.includes(:tags)
                        .search(params[:search], sort: [ 'weighted_score:desc'] )
    render :new
  end
end
