class ProfilesController < ApplicationController
  def show

  end

  def update
    if current_user.update(profile_params)
      flash[:notice] = 'Profile Updated'
    end
    redirect_to profile_path
  end

  private

  def profile_params
    params.require(:user).permit(:username)
  end
end
