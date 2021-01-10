# frozen_string_literal: true

require_relative 'lib/gridstack_on_rails/version'

Gem::Specification.new do |spec|
  spec.name          = 'gridstack_on_rails'
  spec.version       = GridstackOnRails::VERSION
  spec.authors       = ['Marcin Szulc']
  spec.email         = ['maszudev@gmail.com']

  spec.summary       = 'Grindstack.js implementation for Rails'
  spec.description   = 'Compatible with IE11'
  spec.homepage      = 'https://github.com/maszuDEV'
  spec.license       = 'MIT'
  spec.required_ruby_version = Gem::Requirement.new('>= 2.3.0')

  # spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"

  spec.metadata['homepage_uri'] = spec.homepage
  # spec.metadata["source_code_uri"] = "TODO: Put your gem's public repo URL here."
  # spec.metadata["changelog_uri"] = "TODO: Put your gem's CHANGELOG.md URL here."

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  # Dependencies
  spec.add_dependency 'jquery-ui-rails'
  spec.add_dependency 'sass-rails'

  # Development dependencies
  spec.add_development_dependency 'pry'
end
