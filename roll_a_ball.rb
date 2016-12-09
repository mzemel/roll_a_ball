require 'gosu'
require_relative 'ball'
require_relative 'coin'
require_relative 'collider'

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
    @score = 0
    @score_text     = Gosu::Font.new(10)
    @game_over_text = Gosu::Font.new(30)
  end

  def update
    @ball.update
    @coins.each { |c| handle_collision(c, @ball) }
  end

  def draw
    @ball.draw
    @coins.each(&:draw)
    @score_text.draw("Score: #{@score}", 300, 10, 0, 1.0, 1.0, 0xff_ffff00)
    if @coins.size == 0
      @game_over_text.draw("You win!", 150, 200, 4, 1.0, 1.0, 0xff_ffff00)
    end
  end

  private

  def handle_collision(coin, ball)
    if Collider.detect(coin, ball)
      @coins = @coins.reject { |c| c == coin }
      @score += 1
    end
  end
end

window = RollABall.new
window.show