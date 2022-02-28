class DashboardController < ApplicationController
  def show
    @completed_projects = []
    @currently_working_on = []
    @user_projects = []
    @notifications = []
  end
end
