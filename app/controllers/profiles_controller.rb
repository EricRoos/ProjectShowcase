class ProfilesController < ApplicationController
  def edit 
    respond_to do |format|
      format.html do
        render_view_template(ViewTemplate::TwoColumnComponent,{
          side_col: [
            SideNavComponent.new,
            NotificationsComponent.new,
          ],
          main: [ 
            UpdateProfileFormComponent.new(user: current_user)
          ]
        })
      end
    end
  end

  def update
    current_user.update(profile_params)
    respond_to do |format|
      format.turbo_stream do
        toast_opts = if current_user.errors.present?
                       { message: 'Failed to save. Check errors and try again', variant: :error }
                     else
                       { message: 'Profile Updated', variant: :success }
                     end
        render turbo_stream: [
          turbo_stream.replace(:update_profile_form, UpdateProfileFormComponent.new(user: current_user).render_in(view_context)),
          turbo_stream.append(:toasts, ToastComponent.new(**toast_opts).render_in(view_context)),
        ]
      end
    end
  end

  private

  def profile_params
    params.require(:user).permit(:username)
  end
end
