require 'rails_helper'

RSpec.feature "ProjectSearches", type: :feature do
  scenario 'search for projects', js: true do
    current_user = create(:user)
    sign_in current_user
    projects = create_list(:project, 5)
    projects.each(&:index!)
    visit project_search_path
    expect {
      fill_in 'search', with: projects.first.title[0..3]
    }.to change { page.has_content?(projects.first.title) }.from(false).to(true)
  end
end
