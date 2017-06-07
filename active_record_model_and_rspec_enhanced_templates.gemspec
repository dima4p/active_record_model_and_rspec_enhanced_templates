# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run 'rake gemspec'
# -*- encoding: utf-8 -*-
# stub: active_record_model_and_rspec_enhanced_templates 1.1.3 ruby lib

Gem::Specification.new do |s|
  s.name = "active_record_model_and_rspec_enhanced_templates".freeze
  s.version = "1.1.3"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Dmitri Koulikoff".freeze]
  s.date = "2017-06-07"
  s.description = "ActiveRecord generator and RSpec templates that add some basic functionality to the model and its spec".freeze
  s.email = "dima@koulikoff.ru".freeze
  s.extra_rdoc_files = [
    "LICENSE.txt",
    "README.rdoc"
  ]
  s.files = [
    ".document",
    ".rspec",
    "Gemfile",
    "LICENSE.txt",
    "README.rdoc",
    "Rakefile",
    "VERSION",
    "active_record_model_and_rspec_enhanced_templates.gemspec",
    "lib/active_record_model_and_rspec_enhanced_templates.rb",
    "lib/templates/active_record/model/model.rb",
    "lib/templates/rspec/model/model_spec.rb",
    "spec/active_record_model_and_rspec_enhanced_templates_spec.rb",
    "spec/spec_helper.rb"
  ]
  s.homepage = "http://github.com/dima4p/active_record_model_and_rspec_enhanced_templates".freeze
  s.licenses = ["MIT".freeze]
  s.rubygems_version = "2.6.10".freeze
  s.summary = "ActiveRecord generator and RSpec templates that add some basic functionality".freeze

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<rake>.freeze, ["~> 11.0"])
      s.add_development_dependency(%q<rspec>.freeze, ["~> 3.1"])
      s.add_development_dependency(%q<rdoc>.freeze, ["~> 4.1"])
      s.add_development_dependency(%q<bundler>.freeze, ["~> 1.6"])
      s.add_development_dependency(%q<jeweler>.freeze, ["~> 2.0"])
      s.add_development_dependency(%q<simplecov>.freeze, ["~> 0.0"])
    else
      s.add_dependency(%q<rake>.freeze, ["~> 11.0"])
      s.add_dependency(%q<rspec>.freeze, ["~> 3.1"])
      s.add_dependency(%q<rdoc>.freeze, ["~> 4.1"])
      s.add_dependency(%q<bundler>.freeze, ["~> 1.6"])
      s.add_dependency(%q<jeweler>.freeze, ["~> 2.0"])
      s.add_dependency(%q<simplecov>.freeze, ["~> 0.0"])
    end
  else
    s.add_dependency(%q<rake>.freeze, ["~> 11.0"])
    s.add_dependency(%q<rspec>.freeze, ["~> 3.1"])
    s.add_dependency(%q<rdoc>.freeze, ["~> 4.1"])
    s.add_dependency(%q<bundler>.freeze, ["~> 1.6"])
    s.add_dependency(%q<jeweler>.freeze, ["~> 2.0"])
    s.add_dependency(%q<simplecov>.freeze, ["~> 0.0"])
  end
end

