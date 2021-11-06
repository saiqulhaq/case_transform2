# frozen_string_literal: true

lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'case_transform2/version'

Gem::Specification.new do |s|
  s.name        = 'case_transform2'
  s.version     = CaseTransform2::VERSION
  s.license     = 'MIT'
  s.authors     = ['L. Preston Sego III', 'Ben Mills', 'Saiqul Haq']
  s.email       = 'saiqulhaq@gmail.com'
  s.homepage    = 'https://github.com/saiqulhaq/case_transform2'
  s.summary     = 'Transforms string letter case to camel, snake,' \
                  'dash and underscore without activesupport dependencies'
  s.description = "#{s.summary}. Forked from https://github.com/rails-api/case_transform"
  s.metadata['yard.run'] = 'yri'
  s.files = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  s.required_ruby_version = '>= 2.5'

  s.bindir        = 'exe'
  s.executables   = s.files.grep(%r{^exe/}) { |f| File.basename(f) }
  s.require_path = ['lib']

  s.test_files = s.files.grep(%r{^(test|spec|features)/})

  s.add_development_dependency 'bundle-audit', '~> 0.1.0'
  s.add_development_dependency 'bundler', '>= 2.2.30'
  s.add_development_dependency 'guard', '~> 2.18.0'
  s.add_development_dependency 'guard-rspec', '~> 4.7.3'
  s.add_development_dependency 'pry', '~> 0.14.1'
  s.add_development_dependency 'rake', '>= 13.0.6'
  s.add_development_dependency 'rspec', '~> 3.7.0'
  s.add_development_dependency 'rubocop', '~> 1.22'
  s.add_development_dependency 'rubocop-rspec', '~> 2.5.0'
  s.add_development_dependency 'simplecov', '~> 0.17.1'
end
