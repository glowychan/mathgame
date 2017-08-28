class Game
  attr_reader :player1, :player2
  def initialize
    @player1 = Player.new(1)
    @player2 = Player.new(2)
    @turn = 1
  end

  def display_score
    puts "P1: #{@player1.lives}/3 vs. P2: #{@player2.lives}/3"
  end

  def display_result
    if @player1.lives == 0
      puts "Player 2 wins with a score of #{@player2.lives}/3"
    else
      puts "Player 1 wins with a score of #{@player1.lives}/3"
    end
    puts "--- GAME OVER ---"
    puts "Good bye cruel world."
  end

  def start
    while @player1.lives > 0 && @player2.lives > 0
      curr_player_id = (@turn % 2) + 1
      if curr_player_id % 2 === 0
        curr_turn = Turn.new(@player1, @player2)
      else
        curr_turn = Turn.new(@player2, @player1)
      end
      curr_turn.display_question
      if curr_turn.get_player_answer
        curr_turn.evaluation
        self.display_score
        @turn += 1
      end
    end
    self.display_result
  end
end
