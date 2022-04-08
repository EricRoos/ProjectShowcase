
class Pages::Projects::Index::Component < ViewComponent::Base
  def initialize(projects:) 
    @projects = projects
  end

  def template
    ViewTemplate::TwoColumnComponent.new(
      side_col: [
        Molecules::SideNav::Component.new,
        NotificationsComponent.new
      ],
      main: [
        Atoms::IconedLink::Component.new(title: 'New Project', icon_name: 'plus', path: new_project_path),
        Molecules::ProjectTable::Component.new(projects: @projects)
      ]
    )
  end
end
