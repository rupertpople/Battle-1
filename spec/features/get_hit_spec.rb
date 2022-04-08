# User story
# As Player 1,
# So I can start to win a game of Battle,
# I want my attack to reduce Player 2's HP by 10

feature 'Implement Hit Points' do
  scenario 'Player 1 inflicts damage on Player 2' do
    sign_in_and_play
    click_on('Attack')
    click_on('Continue')
    expect(page).to have_content "Superman Hit Points: 90 HP"
  end
end