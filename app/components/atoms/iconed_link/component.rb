# frozen_string_literal: true

class Atoms::IconedLink::Component < ViewComponent::Base
  def initialize(icon_name:, path:, title:)
    @icon_name = icon_name
    @path = path
    @title = title
  end

end
