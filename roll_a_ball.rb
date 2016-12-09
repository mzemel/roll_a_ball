require 'gosu'
require_relative 'ball'

class RollABall < Gosu::Window

  HEIGHT = 400
  WIDTH  = 400

  def initialize
    super HEIGHT, WIDTH
    self.caption = "Roll A Ball"

    @ball = Ball.new
    # Initialize other game objects here
  end

  def update
    @ball.update
  end

  def draw
    @ball.draw
  end
end

window = RollABall.new
window.show