require './app.rb'

feature 'Fill in names' do
  scenario 'Can fill in names and see names on-screen' do
    visit('/')
    fill_in 'First player name', with: 'Nadia'
    fill_in 'Second player name', with: 'Alexis'
    click_on 'Submit'
    expect(page).to have_content 'Nadia vs. Alexis!!!'
  end
end