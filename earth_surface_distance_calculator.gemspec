Gem::Specification.new do |s|
  s.name = 'earth_surface_distance_calculator'
  s.version = '0.0.1'
  s.date = '2020-06-13'
  s.summary = 'earth_surface_distance_calculator is a ruby gem to calculate the arc distance between two sets of ' \
  'latitutde and longitude co-ordinates'
  s.authors = ['Adrian Heaeny']
  s.files = [
    'lib/earth_surface_distance_calculator.rb'
  ]
  s.require_paths = ['lib']

  s.add_development_dependency 'rspec'
end
