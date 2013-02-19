lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'clipcat/version'

Gem::Specification.new do |gem|
  gem.name          = "clipcat"
  gem.version       = Clipcat::VERSION
  gem.description   = %q{cat to and from the clipboard}
  gem.summary       = %q{cat to and from the clipboard}
  gem.authors     = ["Greg Whiteley"]
  gem.email       = ["whitty@users.forge.net"]
  gem.homepage    = "https://github.com/whitty/vstool"
  gem.summary     = %q{vstool allows command-line driving of Visual Studio build and debug commands}
  gem.description = %q{vstool allows command-line driving of Visual Studio build and debug commands}
  gem.license     = "GPL"

  gem.rubyforge_project = "vstool"

  gem.add_runtime_dependency 'clipboard'
  gem.add_runtime_dependency 'ffi'

  gem.add_development_dependency "rake"
  gem.add_development_dependency "rspec", ">= 2.10.0"

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]
end
