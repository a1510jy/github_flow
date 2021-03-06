# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'gem_mini_test/version'

Gem::Specification.new do |spec|
  spec.name          = "gem_mini_test"
  spec.version       = GemMiniTest::VERSION
  spec.authors       = ["a1510jy"]
  spec.email         = ["a1510jy@aiit.ac.jp"]

  spec.summary       = %q{test of gem}
  spec.homepage      = "https://github.com/a1510jy/github_flow"
  spec.license       = "Free"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "minitest"
end
