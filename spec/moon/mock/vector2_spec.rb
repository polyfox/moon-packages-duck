require 'spec_helper'
require 'moon-mock/vector2'

describe Moon::Vector2 do
  context '#initialize' do
    it 'initializes the vector without parameters' do
      v = described_class.new
      expect(v.x).to eq(0.0)
      expect(v.y).to eq(0.0)
    end

    it 'initializes the vector with a parameter' do
      v = described_class.new(1)
      expect(v.x).to eq(1.0)
      expect(v.y).to eq(1.0)
    end

    it 'initializes the vector with 2 parameters' do
      v = described_class.new(1, 2)
      expect(v.x).to eq(1.0)
      expect(v.y).to eq(2.0)
    end

    it 'initializes the vector from another vector' do
      v = described_class.new(described_class.new(12, 8))
      expect(v.x).to eq(12.0)
      expect(v.y).to eq(8.0)
    end
  end

  context '#-@' do
    it 'negates the vector' do
      v = described_class.new(4, -8)
      v2 = -v
      expect(v2.x).to eq(-4)
      expect(v2.y).to eq(8)
    end
  end

  context '#+' do
    it 'mathematically adds a number to the vector' do
      v = described_class.new(1, 2)
      result = v + 1
      expect(result.x).to eq(2)
      expect(result.y).to eq(3)
    end

    it 'mathematically adds an array of numbers to the vector' do
      v = described_class.new(1, 2)
      result = v + [1, 2]
      expect(result.x).to eq(2)
      expect(result.y).to eq(4)
    end
  end

  context '#-' do
  end

  context '#*' do
  end

  context '#/' do
  end

  context '#[]' do
    it 'converts the given object(s) to a Vector2' do
      v1 = described_class[1]
      v2 = described_class[[1, 2]]
      v3 = described_class[1, 2]
      v4 = described_class[described_class.new(1, 2)]

      expect(v1.x).to eq(1)
      expect(v1.y).to eq(1)

      expect(v2.x).to eq(1)
      expect(v2.y).to eq(2)

      expect(v3.x).to eq(1)
      expect(v3.y).to eq(2)

      expect(v4.x).to eq(1)
      expect(v4.y).to eq(2)
    end
  end
end
