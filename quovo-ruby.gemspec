# frozen_string_literal: true

lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'quovo/version'

Gem::Specification.new do |spec|
  spec.name          = 'quovo-ruby'
  spec.version       = Quovo::VERSION
  spec.authors       = ['Jake Haber']
  spec.email         = ['singjsong@gmail.com']

  spec.summary       = "Ruby wrapper for Quovo's v3 API"
  spec.homepage      = 'https://github.com/studentloanbenefits/quovo-ruby'
  spec.license       = 'MIT'

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise 'RubyGems 2.0 or newer is required to protect against public gem pushes.'
  end

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = %w(lib)

  spec.add_development_dependency 'awesome_print', '1.8.0'
  spec.add_development_dependency 'bundler', '~> 1.16'
  spec.add_development_dependency 'byebug', '10.0.2'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rspec', '~> 3.0'
  spec.add_development_dependency 'vcr', '~> 4.0', '>= 4.0.0'
  spec.add_development_dependency 'fakeredis', '~> 0.7.0'
  spec.add_development_dependency 'webmock', '~> 3.4', '>= 3.4.2'

  spec.add_runtime_dependency 'activesupport', '~> 5.2.0', '>= 5.2.0'
  spec.add_runtime_dependency 'httparty', '~> 0.16.2'
  spec.add_runtime_dependency 'redis', '~> 3.3', '>= 3.3.1'
end
