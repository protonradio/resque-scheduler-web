# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'resque/scheduler/web/version'

Gem::Specification.new do |spec|
  spec.name          = 'resque-scheduler-web'
  spec.version       = Resque::Scheduler::Web::VERSION
  spec.authors       = ['Matt Gibson']
  spec.email         = ['downrightlies@gmail.com']
  spec.summary       = 'This gem provides tabs in Resque Web for managing '\
                       'Resque Scheduler.'
  spec.description   = 'Use this if you want to move to the new Resque Web '\
                       'plugin architecture for Resque Scheduler via the'\
                       'resque-web gem, rather '\
                       'than the Sinatra-based approach that is bundled with '\
                       'Resque 1.x'
  spec.homepage      = 'https://github.com/mattgibson/resque-scheduler-web'
  spec.license       = 'MIT'
  spec.required_ruby_version = '>= 2.2.0'

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  # spec.add_runtime_dependency 'resque-web', '~> 0.0.8'
  spec.add_runtime_dependency 'resque-scheduler', '~> 4.0'

  spec.add_development_dependency 'bundler'
  spec.add_development_dependency 'rake', '>= 12.3.3'
  spec.add_development_dependency 'rails', '~> 6.0'
  spec.add_development_dependency 'sqlite3', '~> 1.3'
  spec.add_development_dependency 'rspec-rails', '~> 3.2'
  spec.add_development_dependency 'capybara', '~> 2.4'
  spec.add_development_dependency 'codeclimate-test-reporter', '~> 0'
  spec.add_development_dependency 'rubocop', '>= 0.49.0'
  spec.add_development_dependency 'rubocop-rspec', '~> 1.0'
  spec.add_development_dependency 'launchy', '~> 2.4'
  # Avoids non-thread-safe error.
  # spec.add_development_dependency 'sass', '~> 3.4'
end
