# Duck typing
module Moon
  class Vector1
    attr_accessor :x

    def initialize(x = 0)
      set(x)
    end

    def set(x)
      @x = x
    end

    def to_i
      @x.to_i
    end

    def to_f
      @x.to_f
    end
  end
end
