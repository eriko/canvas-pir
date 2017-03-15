# Ensure we require the local version and not one we might have installed already
require File.join([File.dirname(__FILE__),'lib','canvas-pir','version.rb'])
spec = Gem::Specification.new do |s| 
  s.name = 'canvas-pir'
  s.version = CanvasPir::VERSION
  s.author = 'Your Name Here'
  s.email = 'your@email.address.com'
  s.homepage = 'http://your.website.com'
  s.platform = Gem::Platform::RUBY
  s.summary = 'A description of your project'
  s.files = `git ls-files`.split("
")
  s.require_paths << 'lib'
  s.has_rdoc = true
  s.extra_rdoc_files = ['README.rdoc','canvas-pir.rdoc']
  s.rdoc_options << '--title' << 'canvas-pir' << '--main' << 'README.rdoc' << '-ri'
  s.bindir = 'bin'
  s.executables << 'canvas-pir'
  s.add_development_dependency('rake')
  s.add_development_dependency('rdoc')
  s.add_development_dependency('aruba')
  s.add_runtime_dependency('pry')
  s.add_development_dependency('pry-byebug')
  s.add_development_dependency('pry-rescue')
  s.add_development_dependency('pry-stack_explorer')
  s.add_runtime_dependency('gli','2.15.0')
  s.add_runtime_dependency('pandarus')
end
