require 'sinatra'

class Battle < Sinatra::Base

  enable :sessions
#enable sessions is basically a hash which stores the player inputs as key value pairs
  get '/' do
    erb :index
  end

  post '/names' do
    session[:player1] = params[:player1]
    session[:player2] = params[:player2]
    redirect '/play'
  end

  get '/play' do
    @player1 = session[:player1]
    @player2 = session[:player2]
    erb :play
  end

  run! if app_file == $0
end




# <form action="/" method="post">
# <input type="text" name="player name" id="player1">
# <input type="submit" value="Submit">
# </form>
