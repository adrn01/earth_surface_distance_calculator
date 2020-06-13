# frozen_string_literal: true

require 'earth_surface_distance_calculator'

describe EarthSurfaceDistanceCalculator::Calculator do
  it 'converts degrees to radians' do
    expect(described_class.degress_to_radians(0)).to eq(0)
    expect(described_class.degress_to_radians(180)).to eq(Math.pi)
    expect(described_class.degress_to_radians(360)).to eq(2 * Math.pi)
  end
end
