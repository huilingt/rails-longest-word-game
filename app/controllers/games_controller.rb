class GamesController < ApplicationController
  def new
    @letters = Array('A'..'Z').sample(10)
  end

  def score
   # Check if word is built out of the original grid
  # The word is valid according to the grid, but is not a valid English word
  # The word is valid according to the grid and is an English word
    @letters = Array('A'..'Z').sample(10)
    @word = params["word"]

    if @word.length > 10 || @word.each_char { |char| !@letters.include? char}
      @message = "Sorry but word can't be built out of #{@letters}"
    end
  end
end
