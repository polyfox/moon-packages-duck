require 'moon-mock/clock'
require 'moon-mock/screen'
require 'moon-mock/input'
require 'moon-mock/audio'

module Moon
  class Engine
    # @!attribute step
    #   @return [Proc] per frame step function
    attr_accessor :step

    attr_accessor :config

    attr_accessor :log
    attr_reader :window
    attr_reader :screen
    attr_reader :input

    def initialize(&block)
      @config = { width: 800, height: 600 }
      @window = nil
      @screen = nil
      @input = nil
      @fps = Moon::Clock.new
      @step = block
      @log = STDERR
    end

    def uptime

    end

    def shutdown
      self
    end

    private def create_screen
      @screen = Screen.new @window
      @log.puts 'Screen initialized'
    end

    private def create_input
      @input = Input.new self
      @log.puts 'Input initialized'
    end

    def setup
      create_input
      create_screen
    end

    def main
      @log.puts 'Starting main loop'
      loop do
        Audio.update
        @step.call self, @fps.restart
        #@window.title = sprintf "FPS: %d", @fps.fps
        #@window.swap_buffers
        #GLFW.poll_events
      end
    rescue EngineQuit
    end
  end
end
