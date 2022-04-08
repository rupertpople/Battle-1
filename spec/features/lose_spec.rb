# As a Player,
# So I can Lose a game of Battle,
# I want to see a 'Lose' message if I reach 0HP first

feature 'Losing the battle' do
    scenario 'Player 2 has lost' do
    sign_in_and_play
    battle_to_the_end
    expect(page).to have_content "Superman, you have lost!"
    end
end