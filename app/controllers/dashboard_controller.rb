class DashboardController < ApplicationController
  def show
    @completed_projects = []
    @currently_working_on = []
    @user_projects = []
    @notifications = []

    respond_to do |format|
      format.html do
        render_view_template(ViewTemplate::TwoColumnComponent,{
          side_col: [
            SideNavComponent.new,
          ],
          main: [ 
            NotificationsComponent.new,
            UserStatTilesComponent.new(stats: [])
          ]
        })
      end
    end
  end
end
