require 'spec_helper'
require 'moon-mock/rect'

describe Moon::Rect do
  context '#initialize' do
    it 'initializes a rect' do
      rect = described_class.new(1, 2, 3, 4)
      expect(rect.x).to eq(1)
      expect(rect.y).to eq(2)
      expect(rect.w).to eq(3)
      expect(rect.h).to eq(4)
    end
  end
end
