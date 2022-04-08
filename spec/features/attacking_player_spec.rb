# User Story
# As Player 1,
# So I can win a game of Battle,
# I want to attack Player 2, and I want to get a confirmation

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
end