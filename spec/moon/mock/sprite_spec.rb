require 'spec_helper'
require 'moon-mock/sprite'

describe Moon::Sprite do
  context '#initialize' do
    it 'initializes a Sprite given a filename' do
      ss = described_class.new(fixture_pathname('fixtures/resources/a004x004.png'))
      expect(ss.texture).to be_instance_of(Moon::Texture)
    end

    it 'initializes a Sprite given a Texture' do
      tx = Moon::Texture.new(fixture_pathname('fixtures/resources/a004x004.png'))
      ss = described_class.new(tx)
      expect(ss.texture).to equal(tx)
    end

    it 'fails when given anything else' do
      expect { ss = described_class.new(nil) }.to raise_error TypeError
    end
  end

  context '#render' do
    it 'renders the sprite' do
      ss = described_class.new(fixture_pathname('fixtures/resources/a004x004.png'))
      ss.render(0, 0, 0)
    end
  end
end
