module Moon
  class Rect
    [:x, :y, :w, :h].each do |name|
      attr_reader name

      define_method("#{name}=") do |value|
        instance_variable_set("@#{name}", value.to_i)
      end
    end

    def initialize(x, y, w, h, &block)
      set(x, y, w, h)
    end

    def set(x, y, w, h)
      self.x, self.y, self.w, self.h = x, y, w, h
    end
  end
end
