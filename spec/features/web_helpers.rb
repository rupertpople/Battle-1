def sign_in_and_play
  visit('/')
    fill_in 'First player name', with: 'Megasaur'
    fill_in 'Second player name', with: 'Superman'
    click_on 'Submit'
end

def battle_to_the_end
  18.times do 
    click_on('Attack')
    click_on('Continue')
  end
  click_on('Attack')
end