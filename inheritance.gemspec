require_relative "lib/inheritance/version"

Gem::Specification.new do |spec|
  spec.name        = "inheritance"
  spec.version     = Inheritance::VERSION
  spec.authors     = [ "Kirito" ]
  spec.email       = [ "agarcia@aglabs.com.mx" ]
  spec.homepage    = "https://warelan.com"
  spec.summary     = "Engine Warelan"
  spec.description = "This engine is for internal proyects for warelan"
  spec.license     = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the "allowed_push_host"
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  spec.metadata["allowed_push_host"] = "github.com"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/YattoSys/inheritance"
  spec.metadata["changelog_uri"] = "https://github.com/YattoSys/inheritance/blob/main/README.md"

  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]
  end

  spec.required_ruby_version = ">= 3.4.7"
  spec.add_dependency "rails", "8.1", ">= 8.1.1"
  spec.add_dependency "bcrypt", '~> 3.1', '>= 3.1.20'
  spec.add_dependency "responders", '~> 3.2'
  spec.add_dependency "rails-i18n", '~> 8.0', '>= 8.0.2'
  spec.add_dependency "simple_form", '~> 5.4'
  spec.add_dependency "active_model_serializers", '~> 0.10.15'
  spec.add_dependency "caxlsx", '~> 4.4'
  spec.add_dependency "caxlsx_rails", '~> 0.6.4'
  spec.add_dependency "slack-ruby-client", '~> 3.1'
end
