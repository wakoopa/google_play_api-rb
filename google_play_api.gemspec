# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |gem|
  gem.name          = "google_play_api"
  gem.version       = '0.1'
  gem.authors       = ["Diederick Lawson:"]
  gem.email         = ["diederick@altovista.nl"]
  gem.description   = %q{API for Google Play Store}
  gem.summary       = %q{}
  gem.homepage      = "http://github.com/wakoopa/google_play_api-rb"

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]

  gem.add_development_dependency "rspec"
end
