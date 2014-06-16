# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'dldinternet/mixlib/cli/version'

Gem::Specification.new do |spec|
  spec.name          = "dldinternet-mixlib-cli"
  spec.version       = DLDInternet::Mixlib::CLI::VERSION
  spec.authors       = ["Christo De Lange"]
  spec.email         = ["rubygems@dldinternet.com"]
  spec.summary       = %q{A custom CLI mixlib inspired by Chef and Mixlib::CLI}
  spec.description   = %q{A custom CLI mixlib inspired by Chef and Mixlib::CLI}
  spec.homepage      = ""
  spec.license       = "Apache v2.0"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "mixlib-cli", "> 0"

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake"
end
