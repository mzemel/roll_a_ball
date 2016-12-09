class Coin
  attr_reader :x, :y

  def initialize(x:, y:)
    @image = Gosu::Image.new("assets/coin.png")
    @x = x
    @y = y
  end

  # No update

  def draw
    @image.draw(x, y, z = 2)
  end
end