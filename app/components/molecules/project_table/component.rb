class Molecules::ProjectTable::Component < ViewComponent::Base
  def initialize(projects:) 
    @projects = projects
  end

  def table_headers
    ['Name', 'Title', 'Started On', 'Actions']
  end

  def table_rows
    @projects.pluck(:id,:title, :created_at)
  end

end
