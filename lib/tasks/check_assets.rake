namespace :inheritance do
  desc "Check asset compilation"
  task check_assets: :environment do
    puts "=== Inheritance Assets Check ==="
    
    # Verificar en asset pipeline
    puts "1. Asset Pipeline:"
    puts "   CSS: #{Rails.application.assets.find_asset('inheritance/application.css').present? ? '✓' : '✗'}"
    puts "   JS:  #{Rails.application.assets.find_asset('inheritance/application.js').present? ? '✓' : '✗'}"
    
    # Verificar archivos individuales
    puts "2. Individual Files in Pipeline:"
    %w[core.css iconify-icons.css jquery.js bootstrap.js].each do |file|
      present = Rails.application.assets.find_asset("inheritance/#{file}").present?
      puts "   #{file}: #{present ? '✓' : '✗'}"
    end
    
    # Verificar precompilación
    puts "3. Precompiled Assets:"
    if Rails.application.config.assets.compile
      puts "   Development mode - assets compiled on demand"
    else
      puts "   Production mode - using precompiled assets"
    end
  end
end