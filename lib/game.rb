class Game
  attr_reader :player_1, :player_2, :current_player, :game_over

  def initialize(player_1, player_2)
    @player_1 = player_1
    @player_2 = player_2
    @current_player = @player_1
    @turn = true
    @game_over = false
  end

  def turn
    if @player_1.hp == 0 || @player_2.hp == 0
      puts "I am stuck"
    end_game
    else 
      puts "I get to attack"
      @turn ? attack(@player_2) : attack(@player_1) 
    end
  end

  def self.create(player_1, player_2)
    @game = Game.new(player_1, player_2)
  end

  def self.instance
    @game
  end

  private

  def attack(player)
    player.reduce_hp
    end_game
    switch_current_player
  end

  def switch_turn
    @turn = !@turn
  end

  def switch_current_player
    @turn ? @current_player = @player_2 : @current_player = @player_1
    switch_turn
  end

  def end_game
    if @player_1.hp == 0 || @player_2.hp == 0
    @game_over = @game_over = true
    end
  end
end
