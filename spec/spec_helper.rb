require 'codeclimate-test-reporter'
require 'simplecov'

def fixture_pathname(*args)
  File.join(File.dirname(__FILE__), *args)
end

SimpleCov.start

require 'moon-mock/load'
