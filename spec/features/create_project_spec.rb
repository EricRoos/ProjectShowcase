require 'rails_helper'

RSpec.feature "CreateProjects", type: :feature do
  let(:current_user) { create(:user) }

  before do
    sign_in current_user
  end

  scenario 'can create a project', js: true do
    visit new_project_path
    fill_in 'Title', with: 'Title'
    click_on 'Create Project'
    expect(page).to have_content('Project was successfully created.')
  end

  scenario 'enforces a required title', js: true do
    visit new_project_path
    click_on 'Create Project'
    expect(page).to have_content("Title can't be blank")
  end
end
