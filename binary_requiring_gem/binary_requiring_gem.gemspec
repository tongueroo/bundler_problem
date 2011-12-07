# -*- encoding: utf-8 -*-
root = File.expand_path('../', __FILE__)
lib = "#{root}/lib"

$:.unshift lib unless $:.include?(lib)

Gem::Specification.new do |s|
  s.name        = "binary_requiring_gem"
  s.version     = '0.1.0'
  s.platform    = Gem::Platform::RUBY
  s.authors     = []
  s.email       = []
  s.homepage    = "http://"
  s.summary     = %q{}
  s.description = %q{}

  s.executables = "binary_requiring_gem"
  s.files = `find lib -type f`.split("\n")
  s.require_paths = %w(lib)
end
