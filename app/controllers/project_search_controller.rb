class ProjectSearchController < ApplicationController
  def new
  end

  def create
    @projects = Project.search(params[:search])
    render :new
  end
end
