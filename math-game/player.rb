# sets the player read/write for number of lives and read
# for name settign them as a instance variable
class Player
  attr_accessor :lives
  attr_reader :name

  def initialize(lives, name)
    @lives = lives
    @name = name
  end
end
