# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'tomodachi/version'

Gem::Specification.new do |spec|
  spec.name          = "tomodachi"
  spec.version       = Tomodachi::VERSION
  spec.authors       = ["ikstrm"]
  spec.email         = ["igzarion.1993@gmail.com"]
  spec.description   = %q{Automatic follow back tool with Twitter streaming API}
  spec.summary       = %q{Automatic follow back tool with Twitter streaming API}
  spec.homepage      = "https://github.com/ikstrm/tomodachi"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "twitter"
  spec.add_development_dependency "userstream"
end
