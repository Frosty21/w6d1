# starts the round with Player1 as player to starts
# <TODO> set initialize current_player as a puts choice option question
class Round
  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
    @current_player = @player1
  end

  # sets number1 and number2 for each player between 1-20
  # random number the uses p to display the text in array
  # format
  def question
    @number1 = rand(1..20)
    @number2 = rand(1..20)
    @answer = @number1 + @number2
    puts '--------- New Round-----------'
    p "OK #{@current_player.name}, what is #{@number1} plus #{@number2}?"
  end

  # checks to see if answer matches if not take 1 life from
  # current_player
  def answer
    input = gets.chomp.to_i
    if input == @answer
      puts 'Correct'
    else
      puts "Incorrect, expected #{@answer}"
      @current_player.lives -= 1
    end
  end

  # gives the player1 and player2 lives score
  def score
    puts '<<<<<<<<<<<SCORE>>>>>>>>>>>'
    p "Player1 #{@player1.lives}/3 VS Player2 #{@player2.lives}/3"
  end

  # switches current_player from either Player1 or Player2
  # depending on current_player
  def switch_players
    @current_player = @current_player == @player1 ? @player2 : @player1
  end

  # order with the game is executed
  def order
    question
    answer
    switch_players
    score
  end
end
