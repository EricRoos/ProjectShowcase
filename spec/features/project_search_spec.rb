require 'rails_helper'

RSpec.feature "ProjectSearches", type: :feature do
  scenario 'search for projects' do
    current_user = create(:user)
    sign_in current_user
    projects = create_list(:project, 5)
    projects.each(&:index!)
    visit project_search_path
    fill_in 'search', with: projects.first.title[0..3]
    click_on 'Search'
    expect(page).to have_content(projects.first.title)
  end
end
