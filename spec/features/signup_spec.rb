require 'rails_helper'

RSpec.feature "Signups", type: :feature do
  scenario 'sign up', js: true do
    visit new_user_registration_path
    fill_in 'Email', with: 'bob@2.com'
    fill_in 'Password', with: 'test123456'
    fill_in 'Password confirmation', with: 'test123456'
    click_on 'Sign up'
  end
end
