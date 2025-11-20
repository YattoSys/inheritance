module Inheritance
  class Engine < ::Rails::Engine
    isolate_namespace Inheritance
    initializer "inheritance.assets.precompile" do |app|
      # Asegura que las rutas de assets de tu Engine sean visibles
      # y precompilables en el entorno de producción.
      app.config.assets.paths << root.join("app", "assets", "stylesheets")
      app.config.assets.paths << root.join("app", "assets", "javascripts")
      app.config.assets.paths << root.join("app", "assets", "images")

      app.config.assets.precompile += %w[
        inheritance/core.css
        inheritance/demo.css
        inheritance/helpers.js
        inheritance/config.js
        inheritance/jquery.js
        inheritance/popper.js
        inheritance/bootstrap.js
        inheritance/perfect-scrollbar.js
        inheritance/menu.js
        inheritance/main.js
      ]
    end
  end
end
