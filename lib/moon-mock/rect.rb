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
    def initialize(x, y, w, h, &block)
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
  end
end
