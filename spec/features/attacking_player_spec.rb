# User Story
# As Player 1,
# So I can win a game of Battle,
# I want to attack Player 2, and I want to get a confirmation

# As a Player,
# So I can play a suspenseful game of Battle,
# I want all Attacks to deal a random amount of damage

# As a Player,
# So I can enjoy a game of Battle with more variety,
# I want to choose from a range of attacks I could make

# As a Player,
# So I can better enjoy a game of Battle,
# I want some of my attacks to Paralyse an opponent (chance of losing their next attack)

require_relative '../../lib/game.rb'

feature "Attack Player" do
  scenario "Player 1 attacks Player 2" do
    sign_in_and_play
    # click on button "Attack"
    click_on('Attack')
    # expect to see a confirmation: "You attacked Superman"
    expect(page).to have_content 'Megasaur attacked Superman! BAM!'
  end

  scenario "When it is Player 2s turn, player 2 attacks will reduce HP of player 1" do
    sign_in_and_play
    click_button('Attack')
    click_button('Continue')
    click_button('Attack')
    expect(page).to have_content 'Superman attacked Megasaur! BAM!'
  end

  scenario 'Player 1 chooses to punch' do
    sign_in_and_play
    expect(page).to have_button 'Punch'
  end

  scenario 'Player 1 chooses to kick' do
    sign_in_and_play
    expect(page).to have_button 'Kick'
  end

  scenario 'Player 1 chooses to throw a rock' do
    sign_in_and_play
    expect(page).to have_button 'Throw rock'
  end
  
end