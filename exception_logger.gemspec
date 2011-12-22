# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "exception_logger/version"

Gem::Specification.new do |s|
  s.name        = "exception_logger"
  s.version     = ExceptionLogger::VERSION
  s.authors     = ["Filip Zachar"]
  s.email       = ["tulak@netspace.sk"]
  s.homepage    = ""
  s.summary     = %q{TODO: Write a gem summary}
  s.description = %q{TODO: Write a gem description}

  s.rubyforge_project = "exception_logger"
  s.add_dependency "kaminari"
  s.add_dependency "i18n", ">= 0.4.1"

  s.add_dependency 'rails', '>=3.0.0'

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  # specify any dependencies here; for example:
  # s.add_development_dependency "rspec"
  # s.add_runtime_dependency "rest-client"
end
