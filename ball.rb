class Ball
  attr_reader :x, :y

  def initialize
    @image = Gosu::Image.new("assets/ball.png")
    @x = 10
    @y = 10
  end

  def update
  end

  def draw
    @image.draw(x, y, z = 0)
  end
end
