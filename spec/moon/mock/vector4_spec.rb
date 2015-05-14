require 'spec_helper'
require 'moon-mock/vector4'

describe Moon::Vector4 do
  context '#[]' do
    it 'converts the given object(s) to a Vector4' do
      v1 = described_class[1]
      v3 = described_class[[1, 2], 3, 4]
      v2 = described_class[1, [2, 3, 4]]
      v4 = described_class[[1, 2, 3, 4]]
      v5 = described_class[1, 2, 3, 4]
      v6 = described_class[described_class.new(1, 2, 3, 4)]
      v7 = described_class[Moon::Vector1.new(1), 2, 3, 4]
      v8 = described_class[Moon::Vector2.new(1, 2), 3, 4]
      v9 = described_class[Moon::Vector3.new(1, 2, 3), 4]

      expect(v1.x).to eq(1)
      expect(v1.y).to eq(1)
      expect(v1.z).to eq(1)
      expect(v1.w).to eq(1)

      expect(v2.x).to eq(1)
      expect(v2.y).to eq(2)
      expect(v2.z).to eq(3)
      expect(v2.w).to eq(4)

      expect(v3.x).to eq(1)
      expect(v3.y).to eq(2)
      expect(v3.z).to eq(3)
      expect(v3.w).to eq(4)

      expect(v4.x).to eq(1)
      expect(v4.y).to eq(2)
      expect(v4.z).to eq(3)
      expect(v4.w).to eq(4)

      expect(v5.x).to eq(1)
      expect(v5.y).to eq(2)
      expect(v5.z).to eq(3)
      expect(v5.w).to eq(4)

      expect(v6.x).to eq(1)
      expect(v6.y).to eq(2)
      expect(v6.z).to eq(3)
      expect(v6.w).to eq(4)

      expect(v7.x).to eq(1)
      expect(v7.y).to eq(2)
      expect(v7.z).to eq(3)
      expect(v7.w).to eq(4)

      expect(v8.x).to eq(1)
      expect(v8.y).to eq(2)
      expect(v8.z).to eq(3)
      expect(v8.w).to eq(4)

      expect(v9.x).to eq(1)
      expect(v9.y).to eq(2)
      expect(v9.z).to eq(3)
      expect(v9.w).to eq(4)
    end
  end
end
