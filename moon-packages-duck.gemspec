Gem::Specification.new do |s|
  s.name        = 'moon-packages-mock'
  s.summary     = 'Moon Mock package.'
  s.description = 'Package for loading Tiled map data.'
  s.homepage    = 'https://github.com/polyfox/moon-packages-mock'
  s.email       = 'mistdragon100@gmail.com'
  s.version     = '1.0.1'
  s.platform    = Gem::Platform::RUBY
  s.date        = Time.now.to_date.to_s
  s.license     = 'MIT'
  s.authors     = ['Blaž Hrastnik', 'Corey Powell']

  s.add_development_dependency 'moon-data_model', '>= 1.0.2'
  s.add_development_dependency 'rake',            '>= 11.0'
  s.add_development_dependency 'yard',            '~> 0.8'
  s.add_development_dependency 'rspec',           '~> 3.2'
  s.add_development_dependency 'codeclimate-test-reporter'
  s.add_development_dependency 'simplecov'

  s.require_path = 'lib'
  s.files = []
  s.files += Dir.glob('lib/**/*.{rb,yml}')
  s.files += Dir.glob('spec/**/*')
end
