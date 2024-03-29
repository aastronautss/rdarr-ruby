
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'rdarr/version'

Gem::Specification.new do |spec|
  spec.name          = "rdarr"
  spec.version       = Rdarr::VERSION
  spec.authors       = ['Tyler Guillen']
  spec.email         = ['tyguillen@gmail.com']

  spec.summary       = 'An API wrapper for Radarr'
  spec.description   = 'An API wrapper for Radarr'
  spec.homepage      = 'https://github.com/aastronautss/rdarr'
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.16'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rspec', '~> 3.0'
end
