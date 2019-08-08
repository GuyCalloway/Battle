require 'sinatra'
require_relative './lib/player'
require_relative './lib/game'

class Battle < Sinatra::Base

  enable :sessions
#enable sessions is basically a hash which stores the player inputs as key value pairs
  get '/' do
    erb :index
  end

  post '/names' do
    player1 = Player.new(params[:player1])
    player2 = Player.new(params[:player2])

    $game = Game.new(player1, player2)
    redirect '/play'
  end

  get '/play' do
    @player1 = $game.name
    @player2 = $player2
    erb :play
  end

  post '/attack' do
    @player1 = $player1
    @player2 = $player2
    @game = $game
    @game.attack(@player2)
    erb :attack
  end

  run! if app_file == $0
end




# <form action="/" method="post">
# <input type="text" name="player name" id="player1">
# <input type="submit" value="Submit">
# </form>
