class Player
  attr_accessor :lives, :name

  def initialize(id)
    @lives = 3
    @name = "Player #{id}"
  end

  def receives_penalty
    self.lives -= 1
  end
end