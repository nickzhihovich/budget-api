GrapeSwaggerRails.options.url      = '/v1/doc.json'
GrapeSwaggerRails.options.app_url  = 'http://localhost:3000' if ENV['RAILS_ENV'] == 'development'
GrapeSwaggerRails.options.app_url  = 'https://marderer.herokuapp.com' if ENV['RAILS_ENV'] == 'production'

