# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'rails_view_helpers/version'

Gem::Specification.new do |spec|
  spec.name          = "rails_view_helpers"
  spec.version       = RailsViewHelpers::VERSION
  spec.authors       = ["Dmitriy Nevzorov"]
  spec.email         = ["dmitriy@4isten.co"]
  
  spec.summary       = 'Simple set of Rails View Helpers'
  spec.description   = 'Simple set of Rails View Helpers'
  spec.homepage      = "https://github.com/jimmyn/rails_view_helpers"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.8"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_dependency "active_link_to", "~> 1.0"
  spec.add_dependency "phone", "~> 1.2"

end
