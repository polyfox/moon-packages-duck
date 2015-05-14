require 'spec_helper'
require 'moon-mock/sprite'

describe Moon::Sprite do
  let(:filename) { fixture_pathname('fixtures/resources/a004x004.png') }

  context '#initialize' do
    it 'initializes a Sprite given a filename' do
      ss = described_class.new(filename)
      expect(ss.texture).to be_instance_of(Moon::Texture)
    end

    it 'fails when given a file that doesn\'t exist' do
      expect { described_class.new('fixtures/resources/test.png') }.to raise_error RuntimeError
    end

    it 'initializes a Sprite given a Texture' do
      tx = Moon::Texture.new(filename)
      ss = described_class.new(tx)
      expect(ss.texture).to equal(tx)
    end

    it 'fails when given anything else' do
      expect { ss = described_class.new(nil) }.to raise_error TypeError
    end
  end

  context '#render' do
    it 'renders the sprite' do
      ss = described_class.new(filename)
      ss.render(0, 0, 0)
    end
  end

  context '#clip_rect' do
    it 'sets the sprite\'s clipping rect' do
      ss = described_class.new(filename)
      ss.clip_rect = Moon::Rect.new(0, 0, 4, 4)
    end
  end
end
