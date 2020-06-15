# frozen_string_literal: true

require 'util'

describe SphereSurfaceDistance::Util do
  it 'converts degrees to radians' do
    expect(described_class.degrees_to_radians(0)).to eq(0)
    expect(described_class.degrees_to_radians(180)).to eq(Math::PI)
    expect(described_class.degrees_to_radians(360)).to eq(2 * Math::PI)
  end

  it 'returns a value between 0 and 2 * pi for up to 360 degrees' do
    expect(described_class.degrees_to_radians(rand(360))).to be_between(0, 2 * Math::PI)
  end
end
