# -*- encoding: utf-8 -*-
# stub: katakata_irb 0.1.9 ruby lib

Gem::Specification.new do |s|
  s.name = "katakata_irb".freeze
  s.version = "0.1.9"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.metadata = { "homepage_uri" => "http://github.com/tompng/katakata_irb", "source_code_uri" => "http://github.com/tompng/katakata_irb" } if s.respond_to? :metadata=
  s.require_paths = ["lib".freeze]
  s.authors = ["tompng".freeze]
  s.bindir = "exe".freeze
  s.date = "2023-05-19"
  s.description = "IRB with Typed Completion".freeze
  s.email = ["tomoyapenguin@gmail.com".freeze]
  s.homepage = "http://github.com/tompng/katakata_irb".freeze
  s.licenses = ["MIT".freeze]
  s.required_ruby_version = Gem::Requirement.new(">= 3.0.0".freeze)
  s.rubygems_version = "3.4.13".freeze
  s.summary = "IRB with Typed Completion".freeze

  s.installed_by_version = "3.4.13" if s.respond_to? :installed_by_version

  s.specification_version = 4

  s.add_runtime_dependency(%q<irb>.freeze, [">= 1.4.0"])
  s.add_runtime_dependency(%q<reline>.freeze, [">= 0.3.0"])
  s.add_runtime_dependency(%q<rbs>.freeze, [">= 0"])
end
