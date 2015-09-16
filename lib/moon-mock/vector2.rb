# Duck typing
module Moon
  class Vector2
    include Comparable

    attr_accessor :x
    attr_accessor :y

    def initialize(*args, &block)
      set(*args, &block)
    end

    # @param [Object] other
    # @return [Integer]
    def <=>(other)
      [x, y] <=> Vector2.extract(other)
    end

    def to_a
      return x, y
    end

    def set(*args, &block)
      case args.size
      when 1
        obj, = args
        case obj
        when Vector2, Array
          self.x, self.y = *obj
        when Vector1, Numeric
          self.x = self.y = obj.to_f
        else
          raise TypeError, "wrong argument type #{obj.class} (expected Array, Numeric, Vector1, or Vector2)"
        end
      when 2
        x, y = *args
        self.x, self.y = x.to_f, y.to_f
      else
        self.x, self.y = 0.0, 0.0
      end
    end

    def +(other)
      ox, oy = *self.class.extract(other)
      self.class.new(x + ox, y + oy)
    end

    def -(other)
      ox, oy = *self.class.extract(other)
      self.class.new(x - ox, y - oy)
    end

    def *(other)
      ox, oy = *self.class.extract(other)
      self.class.new(x * ox, y * oy)
    end

    def /(other)
      ox, oy = *self.class.extract(other)
      self.class.new(x / ox, y / oy)
    end

    def -@
      self.class.new(-x, -y)
    end

    def self.extract(obj)
      if obj.is_a?(Array)
        new(*obj)
      else
        new(obj).to_a
      end
    end

    def self.[](*args)
      if args.size > 1
        new(*extract(args))
      else
        new(*extract(args.first))
      end
    end
  end
end
