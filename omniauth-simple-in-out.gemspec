# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'omniauth/simple_in_out/version'

Gem::Specification.new do |spec|
  spec.name          = "omniauth-simple_in_out"
  spec.version       = Omniauth::SimpleInOut::VERSION
  spec.authors       = ["Matthew Sullivan"]
  spec.email         = ["msull92@gmail.com"]
  spec.summary       = %q{Omniauth strategy for Simple In/Out}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "omniauth-oauth2"

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake", "~> 10.0"
end
