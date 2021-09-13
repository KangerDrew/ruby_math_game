require_relative './player'


class Game

  attr_reader :winner

  def initialize
    @winner = nil
    @current_player = nil
  end

  def play(p1, p2)
    if winner
      puts "This game has already concluded. Winner is #{winner.name}."
      return
    end


  end


  private

  attr_accessor :current_player
  attr_writer :winner

end