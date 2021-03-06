# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "ransack/version"

Gem::Specification.new do |s|
  s.name        = "ransack"
  s.version     = Ransack::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Ernie Miller", "Ryan Bigg", "Jon Atack","Sean Carroll"]
  s.email       = ["ernie@erniemiller.org", "radarlistener@gmail.com", "jonnyatack@gmail.com","sfcarroll@gmail.com"]
  s.homepage    = "https://github.com/activerecord-hackery/ransack"
  s.summary     = %q{Object-based searching for Active Record and Mongoid (currently).}
  s.description = %q{Ransack is the successor to the MetaSearch gem. It improves and expands upon MetaSearch's functionality, but does not have a 100%-compatible API.}
  s.required_ruby_version = '>= 2.3'
  s.license     = 'MIT'

  s.add_dependency 'activerecord', '>= 5.2.1'
  s.add_dependency 'activesupport', '>= 5.2.1'
  s.add_dependency 'i18n'
  s.add_dependency 'polyamorous', '2.3.2'

  s.files         = `git ls-files`.split("\n").reject { |f| f.match(%r{^(polyamorous/|logo/|coverage/|spec/)}) }
  s.test_files    = `git ls-files -- spec/*`.split("\n")

  s.require_paths = ["lib"]
end
