require "sinatra"
require_relative "./lib/player.rb"
require_relative "./lib/game.rb"

class Battle < Sinatra::Base
  enable :sessions
  get "/" do
    erb(:index)
  end

  post "/names" do
    $game = Game.new(Player.new(params[:player_1_name]), Player.new(params[:player_2_name]))
    redirect(:play)
  end

  get "/play" do
    @player_1_name = $game.player_1.name
    @player_2_name = $game.player_2.name
    erb(:play)
  end

  get "/attack" do
    
    @player_1_name = $game.player_1.name
    @player_2_name = $game.player_2.name
    $game.attack($game.player_2)
    @player_2_hp = $game.player_2.hp
    erb(:attack)
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
