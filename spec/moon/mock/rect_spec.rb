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

  context '#clear' do
    it 'resets the properties to 0' do
      rect = described_class.new(1, 2, 3, 4)
      rect.clear
      expect(rect.to_a).to eq([0, 0, 0, 0])
    end
  end

  context '#to_a' do
    it 'returns an Array' do
      rect = described_class.new(1, 2, 3, 4)
      expect(rect.to_a).to eq([1, 2, 3, 4])
    end
  end

  context '#to_s' do
    it 'returns a String' do
      rect = described_class.new(1, 2, 3, 4)
      expect(rect.to_s).to eq("1,2,3,4")
    end
  end

  context '#==' do
    it 'can be checked for equality' do
      a = described_class.new(1, 2, 3, 4)
      b = described_class.new(2, 2, 3, 4)

      expect(a).to eq(a)
      expect(b).to eq(b)

      expect(a).not_to eq(b)
      b.x = 1
      expect(a).to eq(b)
    end
  end
end
