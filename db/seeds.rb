require 'database_cleaner'
DatabaseCleaner.strategy = :truncation
DatabaseCleaner.clean

technologies = %w(Ruby Rails Sinatra JavaScript)
technologies.each { |tech| Tag.create(name: tech) }
