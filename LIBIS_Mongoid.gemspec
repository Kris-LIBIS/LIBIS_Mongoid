# coding: utf-8

lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

require 'libis/mongoid/version'

mv_env = ENV['MONGOID_VERSION'] || '4.0'
mongoid_version = mv_env == 'master' ? '{github: "mongoid/mongoid"}' : "~> #{mv_env}"

Gem::Specification.new do |spec|
  spec.name          = 'LIBIS_Mongoid'
  spec.version       = ::LIBIS::Mongoid::VERSION
  spec.date          = Date.today.to_s

  spec.summary       = %q{LIBIS mongoid toolbox.}
  spec.description   = %q{Some tool classes for working with mongoid.}

  spec.authors       = ['Kris Dekeyser']
  spec.email         = ['kris.dekeyser@libis.be']
  spec.homepage      = 'https://github.com/Kris-LIBIS/LIBIS_Mongoid'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})

  spec.require_paths = ['lib']

  spec.add_runtime_dependency 'mongoid', mongoid_version

  spec.add_development_dependency 'bundler', '~> 1.6'
  spec.add_development_dependency 'rake'
end
