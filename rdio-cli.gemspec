# Ensure we require the local version and not one we might have installed already
require File.join([File.dirname(__FILE__),'lib','rdio','version.rb'])
spec = Gem::Specification.new do |s| 
  s.name = 'rdio-cli'
  s.version = Rdio::VERSION
  s.author = 'Wynn Netherland'
  s.email = 'wynn.netherland@gmail.com'
  s.homepage = 'http://wynnnetherland.com'
  s.platform = Gem::Platform::RUBY
  s.summary = 'CLI for Rdio for Mac'
# Add your other files here if you make them
  s.files = %w(
bin/rdio
lib/rdio/version.rb
lib/rdio.rb
  )
  s.require_paths << 'lib'
  s.has_rdoc = true
  s.extra_rdoc_files = ['README.rdoc','rdio.rdoc']
  s.rdoc_options << '--title' << 'rdio' << '--main' << 'README.rdoc' << '-ri'
  s.bindir = 'bin'
  s.executables << 'rdio'
  s.add_development_dependency('rake')
  s.add_development_dependency('rdoc')
  s.add_development_dependency('aruba')
  s.add_runtime_dependency('gli','2.5.2')
end
