require 'rails_helper'

RSpec.feature "Logins", type: :feature do
  scenario 'login ', js: true do
    user = create(:user)
    sign_in user
    visit dashboard_path
    click_on 'Sign out'
    expect(page).to have_content('Signed out successfully')
  end
end
