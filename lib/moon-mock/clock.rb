module Moon
  class Clock
    def initialize
      @then = Time.now
    end

    def delta
      Time.now - @then
    end

    def update
      @then = Time.now
    end

    def restart
      now = Time.now
      d = now - @then
      @then = now
      d
    end

    def fps
      60.0
    end
  end
end
