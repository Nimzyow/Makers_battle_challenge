class Game
  attr_reader :player_1, :player_2, :current_player

  def initialize(player_1, player_2)
    @player_1 = player_1
    @player_2 = player_2
    @current_player = @player_1
    @turn = true
  end

  def turn
    @turn ? attack(@player_2) : attack(@player_1)
  end

  private

  def attack(player)
    player.reduce_hp
    switch_current_player
  end

  def switch_turn
    @turn = !@turn
  end

  def switch_current_player
    @turn ? @current_player = @player_2 : @current_player = @player_1
    switch_turn
  end
end
