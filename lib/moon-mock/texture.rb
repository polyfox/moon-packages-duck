module Moon
  class Texture
    attr_accessor :w
    attr_accessor :h

    def initialize(filename)
      @filename = filename
      @w, @h = 32, 32
      unless File.exist?(@filename)
        raise ScriptError, "file #{filename} does not exist"
      end
    end
  end
end
