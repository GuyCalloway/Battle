require 'sinatra'

class Battle < Sinatra::Base
  get '/' do
    erb :index
  end

  post '/play' do
    @player1 = params[:player1]
    @player2 = params[:player2]
    erb :play
  end


  # ... app code here ...

  # start the server if ruby file executed directly
  run! if app_file == $0
end




# <form action="/" method="post">
# <input type="text" name="player name" id="player1">
# <input type="submit" value="Submit">
# </form>
