# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'first_gem_best_carl/version'

Gem::Specification.new do |spec|
  spec.name          = "first_gem_best_carl"
  spec.version       = FirstGemBestCarl::VERSION
  spec.authors       = ["Prescott Murphy"]
  spec.email         = ["prurph@gmail.com"]
  spec.summary       = %q{My first gem. Doesn't do much.}
  spec.description   = %q{This is the best carl gem. I cannot in good conscience advise using other carl gems.}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.5"
  spec.add_development_dependency "rake"
end
