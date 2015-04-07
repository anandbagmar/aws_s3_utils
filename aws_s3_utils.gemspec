# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run 'rake gemspec'
# -*- encoding: utf-8 -*-
# stub: aws_s3_utils 0.1.0 ruby lib

Gem::Specification.new do |s|
  s.name = "aws_s3_utils"
  s.version = "0.1.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Anand Bagmar"]
  s.date = "2015-04-07"
  s.description = "TODO: longer description of your gem"
  s.email = "abagmar@gmail.com"
  s.extra_rdoc_files = [
    "LICENSE",
    "README.md"
  ]
  s.files = [
    ".rbenv-gemsets",
    ".rspec",
    ".ruby-version",
    "Gemfile",
    "LICENSE",
    "README.md",
    "Rakefile",
    "VERSION",
    "spec/features/archive_spec.rb",
    "spec/helpers/aws_cli_ec2.rb",
    "spec/helpers/utils.rb",
    "spec/helpers/zip.rb",
    "spec/resources/input-data.yml",
    "spec/spec_helper.rb"
  ]
  s.homepage = "http://github.com/AnandBagmar/aws_s3_utils"
  s.licenses = ["MIT"]
  s.rubygems_version = "2.4.5"
  s.summary = "TODO: one-line summary of your gem"

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<bundler>, [">= 0"])
      s.add_runtime_dependency(%q<pry>, ["= 0.10.1"])
      s.add_runtime_dependency(%q<rspec>, ["= 3.2.0"])
      s.add_runtime_dependency(%q<aws-sdk>, [">= 0"])
      s.add_runtime_dependency(%q<jeweler>, [">= 0"])
    else
      s.add_dependency(%q<bundler>, [">= 0"])
      s.add_dependency(%q<pry>, ["= 0.10.1"])
      s.add_dependency(%q<rspec>, ["= 3.2.0"])
      s.add_dependency(%q<aws-sdk>, [">= 0"])
      s.add_dependency(%q<jeweler>, [">= 0"])
    end
  else
    s.add_dependency(%q<bundler>, [">= 0"])
    s.add_dependency(%q<pry>, ["= 0.10.1"])
    s.add_dependency(%q<rspec>, ["= 3.2.0"])
    s.add_dependency(%q<aws-sdk>, [">= 0"])
    s.add_dependency(%q<jeweler>, [">= 0"])
  end
end

