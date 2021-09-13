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

    puts "-------------Let the game begin!-------------"
    puts "Player 1 (#{p1.name}) VS Player 2 (#{p2.name})"
    puts "---------------------------------------------"
    life_reset(p1, p2)


  end


  private

  attr_accessor :current_player
  attr_writer :winner

  def life_reset(p1, p2)
    p1.life = 3
    p2.life = 3
  end

end