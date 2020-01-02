require_relative 'base'

class Words < Base
  
  attr_accessor :word, :difficulty

  def initialize(word, difficulty)
    @word = word
    @difficulty = difficulty
  end
end