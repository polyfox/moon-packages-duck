module Moon
  class Vector4
    attr_accessor :x
    attr_accessor :y
    attr_accessor :z
    attr_accessor :w

    alias :r :x
    alias :r= :x=
    alias :g :y
    alias :g= :y=
    alias :b :z
    alias :b= :z=
    alias :a :w
    alias :a= :w=

    def initialize(*args, &block)
      set(*args, &block)
    end

    def to_a
      return x, y, z, w
    end

    def set(*args, &block)
      if args.size > 0
        result = []
        args.each do |a|
          case a
          when Vector1, Numeric
            result << a.to_f
          when Vector4, Vector3, Vector2, Array
            result.concat(a.to_a)
          else
            raise TypeError, "wrong argument type #{a.class} (expected, Numeric, Array, Vector1, or Vector2, Vector3, Vector4)"
          end
          break if result.size >= 4
        end
        result *= 4 if result.size == 1
        self.x, self.y, self.z, self.w, = *result.map(&:to_f)
      else
        self.x, self.y, self.z, self.w = 0.0, 0.0, 0.0, 0.0
      end
    end

    def +(other)
      ox, oy, oz, ow = *self.class.extract(other)
      self.class.new(x + ox, y + oy, z + oz, w + ow)
    end

    def -(other)
      ox, oy, oz, ow = *self.class.extract(other)
      self.class.new(x - ox, y - oy, z - oz, w - ow)
    end

    def *(other)
      ox, oy, oz, ow = *self.class.extract(other)
      self.class.new(x * ox, y * oy, z * oz, w * ow)
    end

    def /(other)
      ox, oy, oz, ow = *self.class.extract(other)
      self.class.new(x / ox, y / oy, z / oz, w / ow)
    end

    def -@
      self.class.new(-x, -y, -z, -w)
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
