# Duck typing
module Moon
  class Vector1
    attr_accessor :x

    def initialize(x = 0)
      set(x)
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
