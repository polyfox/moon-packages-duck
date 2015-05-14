module Moon
  class Spritesheet
    attr_reader :cell_w
    attr_reader :cell_h

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

    def render(x, y, z, index, options = {})
      puts "#{self}#render(#{x}, #{y}, #{z}, #{index}, #{options})"
    end
  end
end
