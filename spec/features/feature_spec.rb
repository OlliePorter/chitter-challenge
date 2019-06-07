feature 'Allow user to fill in name and at sign up' do
  scenario 'Can submit form with name' do
    visit('/')
    fill_in 'name', with: 'Ollie'
    click_button 'Sign Up'
    expect(page).to have_content 'Ollie'
  end
end

feature 'Add peep' do
  scenario 'can submit a peep via a form' do
    visit('/home')
    fill_in 'peep', with: 'This is a test peep.'
    click_button 'Peep'
    expect(page).to have_content('This is a test peep.')
  end
end
