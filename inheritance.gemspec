# frozen_string_literal: true

require_relative "lib/inheritance/version"

Gem::Specification.new do |spec|
  spec.name = "inheritance"
  spec.version = Inheritance::VERSION
  spec.authors = ["Kirito"]
  spec.email = ["alonso@warelan.com"]

  spec.summary = "InheritanceController and InheritanceAccess"
  spec.description = "Inheritance Controller, Helpers and Full role users"
  spec.homepage = "warelan.com"
  spec.license = "MIT"
  spec.required_ruby_version = ">= 3.1.0"

  spec.metadata["allowed_push_host"] = "https://github.com/"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/YattoSys/inheritance"
  spec.metadata["changelog_uri"] = "https://github.com/YattoSys/inheritance/blob/main/CHANGELOG.md"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  gemspec = File.basename(__FILE__)
  spec.files = IO.popen(%w[git ls-files -z], chdir: __dir__, err: IO::NULL) do |ls|
    ls.readlines("\x0", chomp: true).reject do |f|
      (f == gemspec) ||
        f.start_with?(*%w[bin/ test/ spec/ features/ .git appveyor Gemfile])
    end
  end
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  # Uncomment to register a new dependency of your gem
  # spec.add_dependency "example-gem", "~> 1.0"
  spec.add_dependency "rails", ">= 8.0"
  spec.add_dependency "rails-i18n", ">= 8.0"
  spec.add_dependency "bcrypt", ">= 3.1"
  spec.add_dependency "responders", ">= 3.1"
  spec.add_dependency "simple_form", ">= 5.3"
  spec.add_dependency "active_model_serializers", ">= 0.10"
  spec.add_dependency "caxlsx", ">= 4.4"
  spec.add_dependency "caxlsx_rails", ">= 0.6"
  spec.post_install_message = "\n
  ██╗    ██╗ █████╗ ██████╗ ███████╗██╗      █████╗ ███╗   ██╗
  ██║    ██║██╔══██╗██╔══██╗██╔════╝██║     ██╔══██╗████╗  ██║
  ██║ █╗ ██║███████║██████╔╝█████╗  ██║     ███████║██╔██╗ ██║
  ██║███╗██║██╔══██║██╔══██╗██╔══╝  ██║     ██╔══██║██║╚██╗██║
  ╚███╔███╔╝██║  ██║██║  ██║███████╗███████╗██║  ██║██║ ╚████║
   ╚══╝╚══╝ ╚═╝  ╚═╝╚═╝  ╚═╝╚══════╝╚══════╝╚═╝  ╚═╝╚═╝  ╚═══╝
  Thank you for installing the inheritance gem."

  # For more information and examples about making a new gem, check out our
  # guide at: https://bundler.io/guides/creating_gem.html
end
