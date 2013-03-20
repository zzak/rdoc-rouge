# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'rdoc/rouge/version'

Gem::Specification.new do |spec|
  spec.name          = "rdoc-rouge"
  spec.version       = RDoc::Rouge::VERSION
  spec.authors       = ["Zachary Scott"]
  spec.email         = ["zachary@zacharyscott.net"]
  spec.description   = %q{Syntax highlighting for RDoc using the pygments friendly Rouge.}
  spec.summary       = %q{RDoc plugin to add syntax highlighting.}
  spec.homepage      = "https://github.com/zzak/rdoc-rouge"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency "rdoc", "~> 4.0"
  spec.add_runtime_dependency "rouge", "~> 0.3.0"

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "nokogiri"
  spec.add_development_dependency "rake"
end
