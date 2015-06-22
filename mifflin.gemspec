# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'mifflin/version'

Gem::Specification.new do |spec|
  spec.name          = "mifflin"
  spec.version       = Mifflin::VERSION
  spec.authors       = ["Rômulo Machado"]
  spec.email         = ["romulo.machado5@gmail.com"]

  spec.summary       = %q{ Mifflin is an asset provider. }
  spec.homepage      = "http://github.com/romulomachado/mifflin"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.9"
  spec.add_development_dependency "rake", "~> 10.0"
end
