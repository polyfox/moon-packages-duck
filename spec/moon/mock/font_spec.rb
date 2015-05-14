require 'spec_helper'
require 'moon-mock/font'

describe Moon::Font do
  context '#initialize' do
    it 'initializes a Font given a filename and size' do
      font = described_class.new(fixture_pathname('fixtures/resources/arial.ttf'), 24)
    end
  end

  context '#render' do
    it 'renders the font' do
      font = described_class.new(fixture_pathname('fixtures/resources/arial.ttf'), 24)
      font.render(0, 0, 0, "Hello, World", Moon::Vector4.new(1, 1, 1, 1))
    end
  end
end
