# frozen_string_literal: true

module EarthSurfaceDistanceCalculator
  # utility class to calculate curved distance between two points
  class Calculator
    class << self
      # converts degrees to radians
      def degress_to_radians(degrees)
        degrees * Math::PI / 180
      end
    end
  end
end
