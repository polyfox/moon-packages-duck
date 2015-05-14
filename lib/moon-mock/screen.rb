module Moon
  class Screen
    attr_accessor :w
    attr_accessor :h

    def initialize(window)
      @w, @h = 800, 600
      @window = window
    end
  end
end
