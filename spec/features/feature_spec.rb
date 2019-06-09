require 'pg'

feature 'Allow user to fill in name, password and email at sign up' do
  scenario 'Can submit form with name' do
    visit('/')
    fill_in 'name', with: 'Ollie'
    fill_in 'email', with: 'ol.porter@me.com'
    fill_in 'password', with: 'Passw0rd'
    click_button 'Sign Up'
    expect(page).to have_content 'Ollie'
  end
end
