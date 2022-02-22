require 'rails_helper'

RSpec.feature "AddRequirements", type: :feature do
  scenario 'adding requirement to a project', js: true do
    user = create(:user)
    sign_in user
    project = create(:project)
    visit project_path(project)
    click_on 'New requirement'
    fill_in 'Description', with: 'ya'
    fill_in_rich_text_area 'Story', with: 'story'
    click_on 'Create Requirement'
    expect(page).to have_content('Requirement was successfully created.')
  end

end
