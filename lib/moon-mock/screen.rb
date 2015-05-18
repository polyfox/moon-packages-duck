module Moon
  class Screen
    attr_accessor :w
    attr_accessor :h

    # @param [GLFW::Window] window
    def initialize(window)
      @w, @h = 800, 600
      @window = window
    end

    def rect
      Rect.new(0, 0, @w, @h)
    end
  end
end
