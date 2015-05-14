require 'moon-mock/vector4'

module Moon
  class Font
    attr_reader :size

    # @param [String] filename
    # @param [Integer] size
    def initialize(filename, size)
      @filename = filename
      @size = size
    end

    # @param [Float] x
    # @param [Float] y
    # @param [Float] z
    # @param [String] str
    # @param [Moon::Vector4] color
    # @param [Hash<Symbol, Object>] options
    def render(x, y, z, str, color = nil, options = {})
      color ||= Vector4.new(1, 1, 1, 1)
      puts "#{self}#render(#{x}, #{y}, #{z}, #{str.dump}, #{color}, #{options})"
    end

    # @param [String] str
    # @return [Array<Float>] bounds
    def calc_bounds(str)
      x, y = 0, 0
      str.each_line do |line|
        sz = line.size * @size
        x = sz if x < sz
        y += @size
      end
      [x, y]
    end
  end
end
