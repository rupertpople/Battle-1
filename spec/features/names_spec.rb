require './app.rb'

feature 'Fill in names' do
  scenario 'Can fill in names and see names on-screen' do
    sign_in_and_play
    expect(page).to have_content 'Megasaur vs. Superman!!!'
  end
end