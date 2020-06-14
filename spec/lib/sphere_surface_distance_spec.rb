# frozen_string_literal: true

require 'sphere_surface_distance'

describe SphereSurfaceDistance::Calculator do
  it 'converts degrees to radians' do
    expect(described_class.degrees_to_radians(0)).to eq(0)
    expect(described_class.degrees_to_radians(180)).to eq(Math::PI)
    expect(described_class.degrees_to_radians(360)).to eq(2 * Math::PI)
  end

  it 'returns a value between 0 and 2 * pi for up to 360 degrees' do
    expect(described_class.degress_to_radians(rand(360))).to be_between(0, 2 * Math::PI)
  end

  it 'calculates the central angle' do
    p1 = { l: 0, p: 0 }
    p2 = { l: 0, p: 0 }
    p3 = { l: 0, p: Math::PI }
    p4 = { l: 0, p: 2 * Math::PI }
    p5 = { l: Math::PI / 2, p: 0 }
    p6 = { l: Math::PI / 2, p: Math::PI }

    expect(described_class.central_angle(p1, p2)).to eq(0)
    expect(described_class.central_angle(p1, p3)).to eq(Math::PI)
    expect(described_class.central_angle(p1, p4)).to eq(0)
    expect(described_class.central_angle(p5, p6)).to eq(Math::PI)
  end

  it 'calculates the distance between the two points' do
    p1 = { l: 0, p: 0 }
    p2 = { l: 0, p: Math::PI }
    p3 = { l: Math::PI / 3, p: 0 }
    p4 = { l: Math::PI / 3, p: Math::PI }
    radius = 10

    expect(described_class.surface_distance_on_sphere(p1, p2, radius)).to eq(Math::PI * radius)
    expect(described_class.surface_distance_on_sphere(p3, p4, radius)).to eq(Math::PI * radius)
  end

  it 'calculates the distance between the two points on earth' do
    p1 = { latitude: 0, longitude: 0 }
    p2 = { latitude: 0, longitude: 180 }

    expect(described_class.surface_distance_on_earth(p1, p2, radius)).to eq(Math::PI * radius)
  end
end
