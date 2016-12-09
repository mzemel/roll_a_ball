class Ball
  attr_reader :x, :y

  SPEED = 1

  def initialize
    @image = Gosu::Image.new("assets/ball.png")
    @x = 10
    @y = 10
  end

  def update
    move_left  if Gosu::button_down?(Gosu::KbLeft)
    move_right if Gosu::button_down?(Gosu::KbRight)
    move_up    if Gosu::button_down?(Gosu::KbUp)
    move_down  if Gosu::button_down?(Gosu::KbDown)
  end

  def draw
    @image.draw(x, y, z = 0)
  end

  private

  def move_left
    @x = [0, x - SPEED].max
  end

  def move_right
    @x = [RollABall::WIDTH, x + SPEED].min
  end

  def move_up
    @y = [0, y - SPEED].max
  end

  def move_down
    @y = [RollABall::WIDTH, y + SPEED].min
  end
end
