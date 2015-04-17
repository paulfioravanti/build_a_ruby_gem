# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'paul_mega_lotto/version'

Gem::Specification.new do |spec|
  spec.name          = "paul_mega_lotto"
  spec.version       = PaulMegaLotto::VERSION
  spec.authors       = ["Paul Fioravanti"]
  spec.email         = ["paul.fioravanti@gmail.com"]

  spec.summary       = %q{A Ruby gem to generate lottery drawings.}
  spec.description   = %q{A Ruby Gem to generate lottery drawings: Sandbox for Build a Ruby Gem book.}
  spec.homepage      = "https://github.com/paulfioravanti/paul_mega_lotto"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  # if spec.respond_to?(:metadata)
    # spec.metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com' to prevent pushes to rubygems.org, or delete to allow pushes to any server."
  # end

  spec.add_development_dependency "bundler", "~> 1.9"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec"
  spec.add_development_dependency "pry"

  spec.add_dependency "rails"
end
