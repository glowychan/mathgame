module MathGame
  class Turn
    def initialize(current_player, opponent)
      @current_player = current_player
      @opponent = opponent
      @question = Question.new
    end

    def display_message(msg)
      puts "#{@current_player.name}: #{msg}"
    end

    def display_question
      puts "--- NEW TURN ---"
      self.display_message(@question.question)
    end

    def get_player_answer
      @answer = gets.chomp
    end

    def evaluation
      if @answer.to_i == @question.answer
        self.display_message("YES! You are correct.")
      else
        self.display_message("Seriously? No!")
        @current_player.receives_penalty
      end
    end
  end
end