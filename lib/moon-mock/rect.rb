module Moon
  class Rect
    [:x, :y, :w, :h].each do |name|
      attr_reader name

      define_method("#{name}=") do |value|
        instance_variable_set("@#{name}", value.to_i)
      end
    end

    # @param [Numeric] x
    # @param [Numeric] y
    # @param [Numeric] w
    # @param [Numeric] h
    def initialize(x = 0, y = 0, w = 0, h = 0, &block)
      set(x, y, w, h)
    end

    # @param [Numeric] x
    # @param [Numeric] y
    # @param [Numeric] w
    # @param [Numeric] h
    # @return [self]
    def set(x, y, w, h)
      self.x, self.y, self.w, self.h = x, y, w, h
      self
    end

    # @return [self]
    def clear
      set 0, 0, 0, 0
    end

    # @return [Array<Integer>]
    def to_a
      [x, y, w, h]
    end

    # @return [String]
    def to_s
      "#{x},#{y},#{w},#{h}"
    end
  end
end
