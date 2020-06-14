Gem::Specification.new do |s|
  s.name = 'sphere_surface_distance'
  s.version = '0.0.1'
  s.date = '2020-06-13'
  s.summary = 'sphere_surface_distance is a ruby gem to calculate the arc distance between two sets of ' \
  'latitutde and longitude co-ordinates'
  s.authors = ['Adrian Heaeny']
  s.license = 'MIT'
  s.files = [
    'lib/sphere_surface_distance.rb'
  ]
  s.require_paths = ['lib']

  s.add_development_dependency 'rspec', '~> 3.9'
end
