require_relative "lib/inheritance/version"

Gem::Specification.new do |spec|
  spec.name        = "inheritance"
  spec.version     = Inheritance::VERSION
  spec.authors     = [ "Kirito" ]
  spec.email       = [ "alonso@warelan.com" ]
  spec.homepage    = "https://warelan.com/"
  spec.summary     = "Gema inheritance"
  spec.description = "Gema tipo Engine que tiene usuarios, roles y permisos"
  spec.license     = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the "allowed_push_host"
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "TODO: Put your gem's public repo URL here."
  spec.metadata["changelog_uri"] = "TODO: Put your gem's CHANGELOG.md URL here."

  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]
  end

  spec.add_dependency "rails", ">= 8.1.1"
  spec.add_dependency "bcrypt"
  spec.add_dependency "responders"
  spec.add_dependency "rails-i18n"
  spec.add_dependency "simple_form"
  spec.add_dependency "active_model_serializers"
  spec.add_dependency "caxlsx"
  spec.add_dependency "caxlsx_rails"
  spec.add_dependency "jsbundling-rails"
  spec.add_dependency "importmap-rails"
  spec.add_dependency "sprockets-rails"
  spec.post_install_message = <<-MESSAGE
==================================================
  🎉 GEMA INHERITANCE INSTALADA CON ÉXITO 🎉

  ¡Gracias por usar Inheritance!

██╗    ██╗ █████╗ ██████╗ ███████╗██╗      █████╗ ███╗   ██╗
██║    ██║██╔══██╗██╔══██╗██╔════╝██║     ██╔══██╗████╗  ██║
██║ █╗ ██║███████║██████╔╝█████╗  ██║     ███████║██╔██╗ ██║
██║███╗██║██╔══██║██╔══██╗██╔══╝  ██║     ██╔══██║██║╚██╗██║
╚███╔███╔╝██║  ██║██║  ██║███████╗███████╗██║  ██║██║ ╚████║
 ╚══╝╚══╝ ╚═╝  ╚═╝╚═╝  ╚═╝╚══════╝╚══════╝╚═╝  ╚═╝╚═╝  ╚═══╝

==================================================
MESSAGE
end
