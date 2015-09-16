module Moon
  class Vector3
    include Comparable

    attr_accessor :x
    attr_accessor :y
    attr_accessor :z

    alias :r :x
    alias :r= :x=
    alias :g :y
    alias :g= :y=
    alias :b :z
    alias :b= :z=

    def initialize(*args, &block)
      set(*args, &block)
    end

    def to_a
      return x, y, z
    end

    # @param [Object] other
    # @return [Integer]
    def <=>(other)
      [x, y, z] <=> Vector3.extract(other)
    end

    def set(*args, &block)
      if args.size > 0
        result = []
        args.each do |a|
          case a
          when Vector1, Numeric
            result << a.to_f
          when Vector3, Vector2, Array
            result.concat(a.to_a)
          else
            raise TypeError, "wrong argument type #{a.class} (expected, Numeric, Array, Vector1, or Vector2, Vector3)"
          end
          break if result.size >= 3
        end
        result *= 3 if result.size == 1
        self.x, self.y, self.z, = *result.map(&:to_f)
      else
        self.x, self.y, self.z = 0.0, 0.0, 0.0
      end
    end

    def +(other)
      ox, oy, oz = *self.class.extract(other)
      self.class.new(x + ox, y + oy, z + oz)
    end

    def -(other)
      ox, oy, oz = *self.class.extract(other)
      self.class.new(x - ox, y - oy, z - oz)
    end

    def *(other)
      ox, oy, oz = *self.class.extract(other)
      self.class.new(x * ox, y * oy, z * oz)
    end

    def /(other)
      ox, oy, oz = *self.class.extract(other)
      self.class.new(x / ox, y / oy, z / oz)
    end

    def -@
      self.class.new(-x, -y, -z)
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
