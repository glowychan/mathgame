module MathGame
  class Question
    attr_reader :numbers
    def initialize
      @numOne = rand(1..20)
      @numTwo = rand(1..20)
    end

    def answer
      @numOne + @numTwo
    end

    def question
      "What is #{@numOne} + #{@numTwo}?"
    end
  end
end