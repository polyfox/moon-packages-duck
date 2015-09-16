# Duck typing
module Moon
  class Vector1
    include Comparable

    attr_accessor :x

    def initialize(x = 0)
      set(x)
    end

    # @param [Object] other
    # @return [Integer]
    def <=>(other)
      x <=> other.to_f
    end

    def -@
      dup.tap { |o| o.x = -@x }
    end

    def set(x)
      @x = x.to_f
    end

    def to_i
      @x.to_i
    end

    def to_f
      @x.to_f
    end
  end
end
