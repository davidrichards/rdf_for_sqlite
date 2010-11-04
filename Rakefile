require 'rubygems'
require 'rake'

begin
  require 'jeweler'
  Jeweler::Tasks.new do |gem|
    gem.name = "rdf_for_sqlite"
    gem.summary = %Q{Container gem to get RDF models }
    gem.description = %Q{RDF for SQLite is a container gem for getting the simplest RDF-based applications off the ground.  It uses quite a few modular gems and fixes a little inconsistency between RDF.rb and ActiveModel.  This basically boils down to RDF.rb + ActiveModel + Spira + SQLite3 to create a pretty straightforward repository, serializer, parser, and ORM. }
    gem.email = "davidlamontrichards@gmail.com"
    gem.homepage = "http://github.com/davidrichards/rdf_for_sqlite"
    gem.authors = ["David Richards"]
    gem.add_development_dependency "rspec"
    gem.add_dependency "rdf"
    gem.add_dependency "data_objects"
    gem.add_dependency "do_sqlite3"
    gem.add_dependency "rdf-do"
    gem.add_dependency "spira"
    gem.add_dependency "activemodel"
    gem.add_dependency "json"
    # gem is a Gem::Specification... see http://www.rubygems.org/read/chapter/20 for additional settings
    
    Jeweler::GemcutterTasks.new
  end
rescue LoadError
  puts "Jeweler (or a dependency) not available. Install it with: sudo gem install jeweler"
end

# require 'spec/rake/spectask'
# Spec::Rake::SpecTask.new(:spec) do |spec|
#   spec.libs << 'lib' << 'spec'
#   spec.spec_files = FileList['spec/**/*_spec.rb']
# end
# 
# Spec::Rake::SpecTask.new(:rcov) do |spec|
#   spec.libs << 'lib' << 'spec'
#   spec.pattern = 'spec/**/*_spec.rb'
#   spec.rcov = true
# end
# 
# task :spec => :check_dependencies
# 
# task :default => :spec

require 'rake/rdoctask'
Rake::RDocTask.new do |rdoc|
  if File.exist?('VERSION')
    version = File.read('VERSION')
  else
    version = ""
  end

  rdoc.rdoc_dir = 'rdoc'
  rdoc.title = "rdf_for_sqlite #{version}"
  rdoc.rdoc_files.include('README*')
  rdoc.rdoc_files.include('lib/**/*.rb')
end
