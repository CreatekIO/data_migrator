# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'createk_data_migrator/version'

Gem::Specification.new do |spec|
  spec.name          = "createk_data_migrator"
  spec.version       = CreatekDataMigrator::VERSION
  spec.authors       = ["Reiss Johnson"]
  spec.email         = ["reissjohnson@me.com"]
  spec.summary       = %q{A Gem used for creating data migration tasks}
  spec.homepage      = 'https://github.com/createkio/createk_data_migrator'
  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.12"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
