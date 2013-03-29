# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'spiffing/version'

Gem::Specification.new do |gem|
  gem.name          = "spiffing"
  gem.version       = Spiffing::VERSION
  gem.authors       = ["Mu-An Chiou"]
  gem.email         = ["me@muanchiou.com"]
  gem.description   = "Write CSS using proper English"
  gem.summary       = "We take your well-spelt CSS files and covert them into, well illy-spelt CSS files."
  gem.homepage      = "http://muan.co"

  gem.files         = `git ls-files`.split($/)
  gem.executables   = ["spiffing"]
  gem.require_paths = ["lib"]
  gem.add_development_dependency("commander")
end
