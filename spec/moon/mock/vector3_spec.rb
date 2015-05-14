require 'spec_helper'
require 'moon-mock/vector3'

describe Moon::Vector3 do
  context '#[]' do
    it 'converts the given object(s) to a Vector3' do
      v1 = described_class[1]
      v2 = described_class[1, [2, 3]]
      v3 = described_class[[1, 2], 3]
      v4 = described_class[[1, 2, 3]]
      v5 = described_class[1, 2, 3]
      v6 = described_class[described_class.new(1, 2, 3)]
      v7 = described_class[Moon::Vector1.new(1), 2, 3]
      v8 = described_class[Moon::Vector2.new(1, 2), 3]

      expect(v1.x).to eq(1)
      expect(v1.y).to eq(1)
      expect(v1.z).to eq(1)

      expect(v2.x).to eq(1)
      expect(v2.y).to eq(2)
      expect(v2.z).to eq(3)

      expect(v3.x).to eq(1)
      expect(v3.y).to eq(2)
      expect(v3.z).to eq(3)

      expect(v4.x).to eq(1)
      expect(v4.y).to eq(2)
      expect(v4.z).to eq(3)

      expect(v5.x).to eq(1)
      expect(v5.y).to eq(2)
      expect(v5.z).to eq(3)

      expect(v6.x).to eq(1)
      expect(v6.y).to eq(2)
      expect(v6.z).to eq(3)

      expect(v7.x).to eq(1)
      expect(v7.y).to eq(2)
      expect(v7.z).to eq(3)

      expect(v8.x).to eq(1)
      expect(v8.y).to eq(2)
      expect(v8.z).to eq(3)
    end
  end
end
