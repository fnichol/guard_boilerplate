# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "version"

Gem::Specification.new do |s|
  s.name        = "guard_boilerplate"
  s.version     = GuardBoilerPlate::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Fletcher Nichol"]
  s.email       = ["fnichol@nichol.ca"]
  s.homepage    = "http://rubygems.org/gems/guard_boilerplate"
  s.summary     = %q{A simple script that allows you to run Guard to refresh your web browser and optionally recompile Sass files}
  s.description = %q{A simple script that allows you to run Guard to refresh your web browser and optionally recompile Sass files}

  s.required_rubygems_version = '>= 1.3.6'
  s.rubyforge_project = "guard_boilerplate"

  s.add_dependency 'thor',              '~> 0.14.6'
  s.add_dependency 'growl',             '~> 1.0.3'
  s.add_dependency 'guard',             '~> 0.3.0'
  s.add_dependency 'guard-livereload',  '~> 0.1.9'
  s.add_dependency 'guard-sass',        '~> 0.0.6'
  s.add_dependency 'guard-webrick',     '~> 0.1.0'

  s.files         = `git ls-files`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
end
