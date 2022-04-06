# frozen_string_literal: true

class UserStatTilesComponent < ViewComponent::Base
  def initialize(stats:)
    @stats = stats
  end

end
