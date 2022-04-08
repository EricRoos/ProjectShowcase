class Molecules::SideNav::Component < ViewComponent::Base
  def nav_items
    [
      { path: dashboard_path, icon_name: 'view-boards', title: 'Dashboard' },
      { path: projects_path, icon_name: 'clipboard-check', title: 'Projects' },
      { path: edit_profile_path, icon_name: 'clipboard-check', title: 'Profile' },
      { path: new_project_search_path, icon_name: 'search', title: 'Find a project' },
      { path: '#', icon_name: 'support', title: 'Support' }
    ].map do |nav_item| 
      Atoms::IconedLink::Component.new(**nav_item)
    end
  end
end