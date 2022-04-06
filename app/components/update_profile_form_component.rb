# frozen_string_literal: true

class UpdateProfileFormComponent < ViewComponent::Base
  def initialize(user:)
    @user = user
  end

end
