# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'eenie_meenie/version'

Gem::Specification.new do |spec|
  spec.name          = "eenie_meenie"
  spec.version       = EenieMeenie::VERSION
  spec.authors       = ["Joshua Kovach"]
  spec.email         = ["kovach.jc@gmail.com"]
  spec.summary       = %q{Adds randomized selection using the "Eenie Meenie" method.}
  spec.description   = %q{Adds randomized selection using the "Eenie Meenie" method.}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3"
end
