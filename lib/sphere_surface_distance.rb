# frozen_string_literal: true

require 'util'
require 'constants'

module SphereSurfaceDistance
  # utility class to calculate curved distance between two points
  class Calculator
    class << self
      # calculates the central angle between two points
      # @param point1 [Hash] coordinates to points on spehere in radians { l: 0, p: 0 }
      # @param point2 [Hash] coordinates to points on spehere in radians { l: 0, p: 0 }
      # @return [Float] central angle in radians
      def central_angle(point1, point2)
        Math.acos(
          (Math.sin(point1[:p]) * Math.sin(point2[:p]) +
          (Math.cos(point1[:p]) * Math.cos(point2[:p]) * Math.cos(point2[:l] - point1[:l])))
        )
      end

      # Calculates the sphere surface distance between two points on a sphere
      # @param point1 [Hash] coordinates to points on spehere in radians { l: 0, p: 0 }
      # @param point2 [Hash] coordinates to points on spehere in radians { l: 0, p: 0 }
      # @param radius [Float] radius of sphere
      # @return [Float] distance in meters between two points
      def surface_distance_on_sphere(point1, point2, radius)
        radius * central_angle(point1, point2)
      end

      # Convenience method to get curved distance between to points on earths surface
      # @param point1 [Hash] latitude and longitude in degrees
      # @param point2 [Hash] latitude and longitude in degrees
      # @return [Float] distance in meters between two points on earth
      def surface_distance_on_earth(point1, point2)
        point1_rad = {
          p: Util.degrees_to_radians(point1[:latitude]),
          l: Util.degrees_to_radians(point1[:longitude])
        }
        point2_rad = {
          p: Util.degrees_to_radians(point2[:latitude]),
          l: Util.degrees_to_radians(point2[:longitude])
        }
        surface_distance_on_sphere(point1_rad, point2_rad, EARTH_RADIUS)
      end
    end
  end
end
