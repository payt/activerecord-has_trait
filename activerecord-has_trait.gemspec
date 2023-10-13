# frozen_string_literal: true

require_relative "lib/activerecord/has_trait/version"

Gem::Specification.new do |spec|
  spec.name = "activerecord-has_trait"
  spec.version = Activerecord::HasTrait::VERSION
  spec.authors = ["Payt devs"]
  spec.email = ["devs@paytsoftware.com"]

  spec.summary = "Add support for has_trait to `ActiveRecord`."
  spec.homepage = "https://github.com/payt/activerecord-has_trait"
  spec.license = "MIT"
  spec.required_ruby_version = ">= 2.6.0"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/payt/activerecord-has_trait"
  spec.metadata["changelog_uri"] = "https://github.com/payt/activerecord-has_trait/changelog.md"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(__dir__) do
    `git ls-files -z`.split("\x0").reject do |f|
      (f == __FILE__) || f.match(%r{\A(?:(?:bin|test|spec|features)/|\.(?:git|circleci)|appveyor)})
    end
  end
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency 'activerecord', '> 6', '< 8'
  spec.add_dependency 'activerecord-not_nil'
end
