class LandingPageController < ApplicationController
  skip_before_action :authenticate_user!
  before_action :send_to_dashboard, unless: -> { current_user.present? }
  def show

  end

  private

  def send_to_dashboard
    redirect_to dashboard_path
  end
end
