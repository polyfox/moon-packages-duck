require 'spec_helper'
require 'moon-mock/spritesheet'

describe Moon::Spritesheet do
  context '#initialize' do
    it 'initializes a Spritesheet given a filename' do
      ss = described_class.new(fixture_pathname('fixtures/resources/a004x004.png'), 4, 4)
      expect(ss.texture).to be_instance_of(Moon::Texture)
    end

    it 'initializes a Spritesheet given a Texture' do
      tx = Moon::Texture.new(fixture_pathname('fixtures/resources/a004x004.png'))
      ss = described_class.new(tx, 4, 4)
      expect(ss.texture).to equal(tx)
    end

    it 'fails when given anything else' do
      expect { ss = described_class.new(nil, 4, 4) }.to raise_error TypeError
    end
  end

  context '#render' do
    it 'renders the spritesheet' do
      ss = described_class.new(fixture_pathname('fixtures/resources/a004x004.png'), 4, 4)
      ss.render(0, 0, 0, 4)
    end
  end
end
