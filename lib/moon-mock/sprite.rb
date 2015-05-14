module Moon
  class Sprite
    attr_reader :texture
    attr_reader :clip_rect
    attr_reader :ox
    attr_reader :oy
    attr_reader :opacity
    attr_reader :angle

    def initialize(o)
      case o
      when String
        @filename = o
        raise unless File.exist?(@filename)
        @texture = Texture.new(@filename)
      when Texture
        @texture = o
      else
        raise TypeError, "wrong argument type #{o.class} (expected String)"
      end

      @clip_rect = Rect.new(0, 0, 0, 0)
    end

    def render(x, y, z, options = {})
      puts "#{self}#render(#{x}, #{y}, #{z}, #{options})"
    end

    def clip_rect=(rect)
      @clip_rect = rect
    end

    def ox=(n)
      @ox = n
    end

    def oy=(n)
      @oy = n
    end

    def opacity=(n)
      @opacity = n
    end

    def angle=(n)
      @angle = n
    end
  end
end
