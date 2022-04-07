def sign_in_and_play
  visit('/')
    fill_in 'First player name', with: 'Megasaur'
    fill_in 'Second player name', with: 'Superman'
    click_on 'Submit'
end