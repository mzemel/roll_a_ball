require 'gosu'

class RollABall < Gosu::Window

  HEIGHT = 400
  WIDTH  = 400

  def initialize
    super HEIGHT, WIDTH
    self.caption = "Roll A Ball"

    # Initialize other game objects here
  end

  def update
  end

  def draw
  end
end

window = RollABall.new
window.show