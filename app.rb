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
    @player_2_hp = $game.player_2.hp
    erb(:play)
  end

  get "/attack" do

    $game.turn
    @player_1_name = $game.player_1.name
    @player_2_name = $game.player_2.name
    @player_1_hp = $game.player_1.hp
    @player_2_hp = $game.player_2.hp
    @current_player = $game.current_player.name
    erb(:attack)
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
