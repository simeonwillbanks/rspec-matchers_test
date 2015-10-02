# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'rspec/matchers_test/version'

Gem::Specification.new do |spec|
  spec.name          = "rspec-matchers_test"
  spec.version       = Rspec::MatchersTest::VERSION
  spec.authors       = ["Simeon F. Willbanks"]
  spec.email         = ["simeon@simeons.net"]
  spec.summary       = %q{Testing RSpec matchers}
  spec.description   = %q{Testing RSpec matchers}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
end
