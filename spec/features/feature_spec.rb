require 'pg'

feature 'Allow user to fill in name, password, email and username at sign up' do
  scenario 'Can submit form with name' do
    visit('/')
    fill_in 'name', with: 'Ollie'
    fill_in 'email', with: 'ol.porter@me.com'
    fill_in 'password', with: 'Passw0rd'
    fill_in 'username', with: 'hey_olpo'
    click_button 'Sign Up'
    expect(page).to have_content 'Ollie'
  end
end
