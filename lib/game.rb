class Game
  attr_reader :player_1, :player_2

  def initialize(player_1, player_2)
    @player_1 = player_1
    @player_2 = player_2
    @turn = true
  end

  def turn
    @turn ? attack(@player_2) : attack(@player_1)
  end

  def attack(player)
    player.reduce_hp
    @turn = !@turn
  end
end
