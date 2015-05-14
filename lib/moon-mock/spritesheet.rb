module Moon
  class Spritesheet
    attr_reader :texture
    attr_reader :cell_w
    attr_reader :cell_h

    # @param [String, Texture] o  texture capable object
    #                             if given a String, it will treat it as a
    #                             filename, otherwise its a Texture
    # @param [Integer] cw  cell width
    # @param [Integer] ch  cell height
    # @raise TypeError if not given a String or Texture
    def initialize(o, cw, ch)
      @cell_w = cw
      @cell_h = ch
      case o
      when String
        @filename = o
        raise unless File.exist?(@filename)
        @texture = Texture.new(@filename)
      when Texture
        @texture = o
      else
        raise TypeError,
              "wrong argument type #{o.class} (expected Texture or String)"
      end
    end

    # @param [Float] x
    # @param [Float] y
    # @param [Float] z
    # @param [Integer] index  spritesheet index
    # @param [Hash<Symbol, Object>] options
    def render(x, y, z, index, options = {})
      puts "#{self}#render(#{x}, #{y}, #{z}, #{index}, #{options})"
    end
  end
end
