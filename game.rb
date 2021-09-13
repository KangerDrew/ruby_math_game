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

    while p1.life > 0 && p2.life > 0
      set_player(p1, p2)
      puts "Current player is: #{current_player.name}"

      val1 = rand_num
      val2 = rand_num
      sum = val1 + val2

      puts "What is the sum of #{val1} and #{val2}?"
      user_inp = gets.chomp.to_i
      if user_inp != sum
        puts "Wrong. The solution was #{sum}."
        current_player.life -= 1
        break if game_over?(p1, p2)
        puts "P1: #{p1.life}/3 vs P2: #{p2.life}/3"
      else
        puts "You are correct!"
        puts "P1: #{p1.life}/3 vs P2: #{p2.life}/3"
      end
      puts "------------------NEW TURN-------------------"
    end

    puts "Game over. The winner is #{winner.name} with the score of #{winner.life}/3!"
    puts "------------------GAME OVER------------------"

  end


  private

  attr_accessor :current_player
  attr_writer :winner

  def life_reset(p1, p2)
    p1.life = 3
    p2.life = 3
  end

end