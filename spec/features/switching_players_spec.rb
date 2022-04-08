# As two Players,
# So we can continue our game of Battle,
# We want to switch turns

feature "Change turns between players" do
    scenario "Player 1 goes first" do
        sign_in_and_play
        expect(page).to have_content "Megasaur it's your turn!"
    end
    scenario "Player 2 goes second" do
        sign_in_and_play
        click_on('Attack')
        click_on('Continue')
        expect(page).to have_content "Superman it's your turn!"
    end
end