# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'no_limits/version'

Gem::Specification.new do |spec|
  spec.name          = "no_limits"
  spec.version       = NoLimits::VERSION
  spec.authors       = ["Dennis Charles Hackethal"]
  spec.email         = ["dennis.hackethal@gmail.com"]
  spec.description   = %q{This gem makes has_many associations with limits and has_one associations prettier for Rails.}
  spec.summary       = %q{This gem enables you to write code like `has 3, :associations` instead of the more verbose `has_many :associations, limit: 3`}
  spec.homepage      = "https://github.com/dchacke/no_limits"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "activerecord"
  spec.add_development_dependency "rspec"
end
