module Moon
  class Input
    class Mouse
      # position= is not apart of the Moon API, it here simply to position the
      # mouse for testing.
      attr_accessor :position
      attr_reader :engine

      # @param [Moon::Engine] engine
      def initialize(engine)
        @engine = engine
        @position = Vector2.new
      end

      # @return [Float] x
      def x
        position.x
      end

      # @return [Float] y
      def y
        position.y
      end
    end

    attr_reader :engine
    attr_reader :mouse

    def initialize(engine)
      @mouse = Mouse.new(engine)
    end

    def on_key(key, scancode, action, mods)
    end

    def on_button(button, action, mods)
    end

    def on_type(char)
    end

    def on_mousemove(x, y)
    end
  end
end
