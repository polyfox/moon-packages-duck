require 'spec_helper'
require 'moon-mock/texture'

describe Moon::Texture do
  context '#initialize' do
    it 'creates a Texture from a filename' do
      texture = Moon::Texture.new(fixture_pathname('fixtures/resources/a004x004.png'))
    end

    it 'fails to create a texture if the file does not exist' do
      expect { Moon::Texture.new(fixture_pathname('fixtures/resources/test_derp.png')) }.to raise_error(ScriptError)
    end
  end
end
