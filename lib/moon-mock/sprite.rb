module Moon
  class Sprite
    attr_reader :texture
    attr_accessor :clip_rect
    attr_accessor :ox
    attr_accessor :oy
    attr_accessor :opacity
    attr_accessor :angle

    # @param [String, Texture] o  texture capable object
    #                             if given a String, it will treat it as a
    #                             filename, otherwise its a Texture
    # @raise TypeError if not given a String or Texture
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

    # @param [Float] x
    # @param [Float] y
    # @param [Float] z
    # @param [Hash<Symbol, Object>] options
    def render(x, y, z, options = {})
      puts "#{self}#render(#{x}, #{y}, #{z}, #{options})"
    end
  end
end
