class Collider
  class << self
    # Expects the second object to have #top_left and #bottom_right methods
    def detect(first, second)
      return true if first.x >= second.top_left[0] && first.x <= second.bottom_right[0] &&
                     first.y >= second.top_left[1] && first.y <= second.bottom_right[1]
    end
  end
end