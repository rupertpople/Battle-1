require 'sinatra/base'
require 'sinatra/reloader'
require './lib/player'

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
    p params
    $player1 = Player.new(params[:player1]).name
    $player2 = Player.new(params[:player2]).name
    redirect to('/play')
  end

  get '/play' do
    erb(:play)
  end

  get '/attack' do
    erb(:attack)
  end

  run! if app_file == $0

end