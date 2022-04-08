require 'sinatra/base'
require 'sinatra/reloader'
require './lib/player'
require './lib/game'

class Battle < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  enable :sessions

  get '/' do
    erb(:index)
  end

  get '/testing_infrastructure' do
    "Testing infrastructure working!"
  end

  post '/names' do
    player1 = Player.new(params[:player1])
    player2 = Player.new(params[:player2])
    $game = Game.new(player1, player2)
    redirect to('/play')
  end

  get '/play' do
    @game = $game
    @player2_hp = @game.player2.hit_points
    erb(:play)
  end

  get '/attack' do
    @game = $game
    @game.attack(@game.player2)
    erb(:attack)
  end

  run! if app_file == $0

end