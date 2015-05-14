module Moon
  class Input
    class Mouse
      # position= is not apart of the Moon API, it here simply to position the
      # mouse for testing.
      attr_accessor :position
      attr_reader :engine

      def initialize(engine)
        @engine = engine
        @position = Vector2.new
      end

      def x
        position.x
      end

      def y
        position.y
      end
    end
  end
end
