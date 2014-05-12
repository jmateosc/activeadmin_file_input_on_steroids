# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'activeadmin_file_input_on_steroids/version'

Gem::Specification.new do |spec|
  spec.name          = "activeadmin_file_input_on_steroids"
  spec.version       = ActiveadminFileInputOnSteroids::VERSION
  spec.authors       = ["Ariel Schvartz"]
  spec.email         = ["ari.shh@gmail.com"]
  spec.summary       = %q{Gem that adds functionality to activeadmin file input}
  spec.description   = %q{Adds 2 functionalities to the file input. Image preview and a size hint, that indicates the sizes generated with paperclip.}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.5"
  spec.add_development_dependency "rake"
end
