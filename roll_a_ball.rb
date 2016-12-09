require 'gosu'
require_relative 'ball'
require_relative 'coin'

class RollABall < Gosu::Window

  HEIGHT = 400
  WIDTH  = 400

  def initialize
    super HEIGHT, WIDTH
    self.caption = "Roll A Ball"

    @ball = Ball.new
    @coins = 10.times.collect do
      Coin.new(x: rand(WIDTH), y: rand(HEIGHT))
    end
    # Initialize other game objects here
  end

  def update
    @ball.update
  end

  def draw
    @ball.draw
    @coins.each(&:draw)
  end
end

window = RollABall.new
window.show