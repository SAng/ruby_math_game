class Game_State < Game

  attr_accessor :current_player




  def initialize()
    @current_player = 0
    @player1_lives = 3
    @player2_lives = 3
  end

  def current_player_name
    (@current_player === 1) ? "Player 2" : "Player 1"
  end

  def current_player_wrong
    (@current_player === 1) ? (@player2_lives += -1) :  (@player1_lives += -1)
  end

  def current_player_lives
    (@current_player === 1) ? @player2_lives :  @player1_lives
  end

  def switch_turn
    @current_player = ((@current_player === 1)  ? 0 : 1)

  end
  def scores
    "P1: #{@player1_lives}/3 P2: #{@player2_lives}/3"
  end
end