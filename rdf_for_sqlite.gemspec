# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run the gemspec command
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{rdf_for_sqlite}
  s.version = "0.1.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["David Richards"]
  s.date = %q{2010-11-03}
  s.description = %q{RDF for SQLite is a container gem for getting the simplest RDF-based applications off the ground.  It uses quite a few modular gems and fixes a little inconsistency between RDF.rb and ActiveModel.  This basically boils down to RDF.rb + ActiveModel + Spira + SQLite3 to create a pretty straightforward repository, serializer, parser, and ORM. }
  s.email = %q{davidlamontrichards@gmail.com}
  s.extra_rdoc_files = [
    "LICENSE",
     "README.rdoc"
  ]
  s.files = [
    ".document",
     ".gitignore",
     "LICENSE",
     "README.rdoc",
     "Rakefile",
     "VERSION",
     "lib/rdf_for_sqlite.rb",
     "spec/rdf_for_sqlite_spec.rb",
     "spec/spec_helper.rb"
  ]
  s.homepage = %q{http://github.com/davidrichards/rdf_for_sqlite}
  s.rdoc_options = ["--charset=UTF-8"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.7}
  s.summary = %q{Container gem to get RDF models}
  s.test_files = [
    "spec/rdf_for_sqlite_spec.rb",
     "spec/spec_helper.rb"
  ]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<rspec>, [">= 0"])
      s.add_runtime_dependency(%q<rdf>, [">= 0"])
      s.add_runtime_dependency(%q<data_objects>, [">= 0"])
      s.add_runtime_dependency(%q<do_sqlite3>, [">= 0"])
      s.add_runtime_dependency(%q<rdf-do>, [">= 0"])
      s.add_runtime_dependency(%q<spira>, [">= 0"])
      s.add_runtime_dependency(%q<activemodel>, [">= 0"])
      s.add_runtime_dependency(%q<json>, [">= 0"])
    else
      s.add_dependency(%q<rspec>, [">= 0"])
      s.add_dependency(%q<rdf>, [">= 0"])
      s.add_dependency(%q<data_objects>, [">= 0"])
      s.add_dependency(%q<do_sqlite3>, [">= 0"])
      s.add_dependency(%q<rdf-do>, [">= 0"])
      s.add_dependency(%q<spira>, [">= 0"])
      s.add_dependency(%q<activemodel>, [">= 0"])
      s.add_dependency(%q<json>, [">= 0"])
    end
  else
    s.add_dependency(%q<rspec>, [">= 0"])
    s.add_dependency(%q<rdf>, [">= 0"])
    s.add_dependency(%q<data_objects>, [">= 0"])
    s.add_dependency(%q<do_sqlite3>, [">= 0"])
    s.add_dependency(%q<rdf-do>, [">= 0"])
    s.add_dependency(%q<spira>, [">= 0"])
    s.add_dependency(%q<activemodel>, [">= 0"])
    s.add_dependency(%q<json>, [">= 0"])
  end
end

