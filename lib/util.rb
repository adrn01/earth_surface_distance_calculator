# frozen_string_literal: true

module SphereSurfaceDistance
  class Util
    class << self
      # converts degrees to radians
      # @param degrees [Float] degrees
      # @return [Float] distance in meters between two points
      def degrees_to_radians(degrees)
        degrees * Math::PI / 180
      end
    end
  end
end
