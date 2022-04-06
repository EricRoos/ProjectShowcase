# frozen_string_literal: true

class ActiveProjectsTableComponent < ViewComponent::Base
  def initialize(projects:, title: 'Active Projects')
    @projects = projects
    @title = title
  end

end
