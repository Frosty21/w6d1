# the Game start with 2 players 3 lives starting the round
class Game
  def initialize
    @player1 = Player.new(3, 'Player1')
    @player2 = Player.new(3, 'Player2')
    @round = Round.new(@player1, @player2)
  end

  # playing round check to see if lives less than 1 from any
  # Player will trigger game over
  def playing
    @round.order until @player1.lives < 1 || @player2.lives < 1
    puts '---------GAME OVER------------'
  end
end
