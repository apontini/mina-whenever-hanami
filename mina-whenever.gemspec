# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'mina/whenever/hanami/version'

Gem::Specification.new do |spec|
  spec.name          = "mina-whenever-hanami"
  spec.version       = Mina::Whenever::Hanami::VERSION
  spec.authors       = ["apontini"]
  spec.email         = ["alberto.pontini@gmail.com"]

  spec.summary       = %q{Mina plugin for whenever, adapted for Hanami ruby framework}
  spec.description   = %q{Mina plugin for whenever, adapted for Hanami ruby framework}
  spec.homepage      = "https://github.com/apontini/mina-whenever-hanami"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.11"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_dependency "mina", "~> 1.0"
  spec.add_dependency "hanami", "~> 1.3"
end
