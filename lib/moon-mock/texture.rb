module Moon
  class Texture
    def initialize(filename)
      @filename = filename
      unless File.exist?(@filename)
        raise ScriptError, "file #{filename} does not exist"
      end
    end

    def w
      32
    end

    def h
      32
    end
  end
end
