require 'spec_helper'
require 'moon-mock/vector1'

describe Moon::Vector1 do
  context '#initialize' do
    it 'initializes the vector without parameters' do
      v1 = described_class.new
      expect(v1.x).to eq(0.0)
    end

    it 'initializes the vector with a parameter' do
      v1 = described_class.new(1)
      expect(v1.x).to eq(1.0)
    end

    it 'initializes the vector from another vector' do
      v1 = described_class.new(described_class.new(12))
      expect(v1.x).to eq(12.0)
    end
  end

  context '#-@' do
    it 'negates the vector' do
      v1 = described_class.new(12)
      v2 = -v1
      expect(v2.x).to eq(-12)
    end
  end

  context '#to_i' do
    it 'converts the vector to an Integer' do
      v1 = described_class.new(1.3)
      expect(v1.to_i).to eq(1)
    end
  end

  context '#to_f' do
    it 'converts the vector to a Float' do
      v1 = described_class.new(1.3)
      expect(v1.to_f).to eq(1.3)
    end
  end
end
