require_relative './player'


class Game

  attr_reader :winner

  def initialize
    @winner = nil
    @current_player = nil
  end


  private

  attr_accessor :current_player
  attr_writer :winner

end