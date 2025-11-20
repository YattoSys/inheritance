task :inheritance_debug do
  puts "=== Inheritance Debug ==="
  
  # Verificar estructura básica
  puts "Current directory: #{Dir.pwd}"
  puts "Tasks directory exists: #{Dir.exist?('lib/tasks')}"
  
  # Listar todos los archivos .rake
  rake_files = Dir.glob("lib/tasks/**/*.rake")
  puts "Rake files found: #{rake_files}"
  
  # Verificar assets básicos
  puts "Assets structure:"
  puts "  Stylesheets: #{Dir.exist?('app/assets/stylesheets/inheritance')}"
  puts "  Javascripts: #{Dir.exist?('app/assets/javascripts/inheritance')}"
  
  if Dir.exist?('app/assets/stylesheets/inheritance')
    css_files = Dir.glob("app/assets/stylesheets/inheritance/*.css")
    puts "  CSS files: #{css_files.map { |f| File.basename(f) }.join(', ')}"
  end
end