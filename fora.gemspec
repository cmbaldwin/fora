lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "fora/version"

Gem::Specification.new do |spec|
  spec.name = "fora"
  spec.version = Fora::VERSION
  spec.authors = ["Cody Baldwin", "Josh Nishikiawa", "Chris Oliver"]
  spec.email = ["codybaldwin@gmail.com"]

  spec.summary = "A forum with the goal of being a configurable competitior to PHP forums"
  spec.description = "Fora is the plural of the greek word 'forum'"
  spec.homepage = "https://github.com/cmbaldwin/fora"
  spec.license = "MIT"

  spec.files = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "font-awesome-sass", ">= 5.13.0"
  spec.add_dependency "friendly_id", ">= 5.2.0"
  spec.add_dependency "rails", ">= 4.2"
  spec.add_dependency "will_paginate", ">= 3.1.0"
end
