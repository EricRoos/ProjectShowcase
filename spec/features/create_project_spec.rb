require 'rails_helper'

RSpec.feature "CreateProjects", type: :feature do
  @javascript
  scenario 'can create a project' do
    visit new_project_path
    fill_in 'Title', with: 'Title'
    click_on 'Create Project'
    expect(page).to have_content('Project was successfully created.')
  end

  @javascript
  scenario 'enforces a required title' do
    visit new_project_path
    click_on 'Create Project'
    expect(page).to have_content("Title can't be blank")
  end
end
