# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run 'rake gemspec'
# -*- encoding: utf-8 -*-
# stub: active_record_model_and_rspec_enhanced_templates 1.0.0 ruby lib

Gem::Specification.new do |s|
  s.name = "active_record_model_and_rspec_enhanced_templates"
  s.version = "1.0.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Dmitri Koulikoff"]
  s.date = "2014-09-12"
  s.description = "ActiveRecord generator and RSpec templates that add some basic functionality to the model and its spec"
  s.email = "dima@koulikoff.ru"
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
  s.homepage = "http://github.com/dima4p/active_record_model_and_rspec_enhanced_templates"
  s.licenses = ["MIT"]
  s.rubygems_version = "2.2.2"
  s.summary = "ActiveRecord generator and RSpec templates that add some basic functionality"

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<rspec>, ["~> 3.1"])
      s.add_development_dependency(%q<rdoc>, ["~> 4.1"])
      s.add_development_dependency(%q<bundler>, ["~> 1.6"])
      s.add_development_dependency(%q<jeweler>, ["~> 2.0"])
      s.add_development_dependency(%q<simplecov>, ["~> 0.0"])
    else
      s.add_dependency(%q<rspec>, ["~> 3.1"])
      s.add_dependency(%q<rdoc>, ["~> 4.1"])
      s.add_dependency(%q<bundler>, ["~> 1.6"])
      s.add_dependency(%q<jeweler>, ["~> 2.0"])
      s.add_dependency(%q<simplecov>, ["~> 0.0"])
    end
  else
    s.add_dependency(%q<rspec>, ["~> 3.1"])
    s.add_dependency(%q<rdoc>, ["~> 4.1"])
    s.add_dependency(%q<bundler>, ["~> 1.6"])
    s.add_dependency(%q<jeweler>, ["~> 2.0"])
    s.add_dependency(%q<simplecov>, ["~> 0.0"])
  end
end

