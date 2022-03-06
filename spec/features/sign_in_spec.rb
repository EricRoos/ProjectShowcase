require 'rails_helper'

RSpec.feature "Logins", type: :feature do
  scenario 'login ', js: true do
    user = create(:user)
    visit new_user_session_path
    fill_in 'Email', with: user.email
    fill_in 'Password', with: 'test123456'
    click_on 'Log in'
    expect(page).to have_content('Signed in successfully')
  end
end
