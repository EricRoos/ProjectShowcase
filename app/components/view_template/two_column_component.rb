# frozen_string_literal: true

class ViewTemplate::TwoColumnComponent < ViewComponent::Base
  def initialize(side_col:, main:)
    @side_col = side_col
    @main = main
  end

end
