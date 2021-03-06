require 'rake'
begin
  Gem::Specification.new do |s|
    s.homepage = 'http://github.com/berick/openils-mapper'
    s.name = "openils-mapper"
    s.version = '0.9.9'
    s.summary = "EDIFACT<->JSON middleware for the Evergreen Open Source ILS"
    s.email = "berickxx@gmail.com"
    s.description = "Middleware layer to provide translation between high-level JSON and raw EDIFACT messages"
    s.authors = ["Michael B. Klein","Bill Erickson"]
    s.files = FileList["[A-Z]*", "README.rdoc", "{bin,lib,test}/**/*"]
    s.extra_rdoc_files = ['README.rdoc']
    s.rdoc_options << '--main' << 'README.rdoc'
    s.add_dependency 'edi4r', '>= 0.9.4'
    s.add_dependency 'edi4r-tdid', '>= 0.6.5'
    s.add_dependency 'yajl-ruby', '>= 0.7.7'
    s.add_development_dependency 'rcov', '>= 0.8.1'
    s.add_development_dependency 'rspec', '>= 1.2.2'
    s.add_development_dependency 'rake', '>= 0.8.0'
  end
rescue LoadError
  puts "Error loading OpenILS::Mapper module."
end
