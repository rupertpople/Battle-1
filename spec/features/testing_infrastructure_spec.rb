require './app.rb'

# describe 'Battle' do
#     let(:battle) {Battle.new}
#     it 'prints testing infrastructure working' do
#         expect(battle.get '/').to eq 'Testing infrastructure working!'
#     end

feature 'Testing infrastucture' do
  scenario 'Can run app and check page content' do
    visit('/')
    expect(page).to have_content 'Testing infrastructure working!'
  end
end