source "https://rubygems.org"

# Rails and essential gems
gem "rails", "~> 8.0.1"
# gem "propshaft" # The modern asset pipeline for Rails
gem "pg", "~> 1.1" # PostgreSQL as the database for Active Record
gem "puma", ">= 5.0" # Puma web server
gem "importmap-rails" # JavaScript with ESM import maps
gem "turbo-rails" # Hotwire's SPA-like page accelerator
gem "stimulus-rails" # Hotwire's modest JavaScript framework
gem "jbuilder" # Build JSON APIs
gem "bootstrap", "~> 5.2"
gem "autoprefixer-rails"
gem "font-awesome-sass", "~> 6.1"
gem "simple_form"
gem "sassc-rails" # SCSS processing

# Test group
group :test do
  gem 'rspec-rails'
  gem 'rails-controller-testing'
end

# Time zone data for Windows and JRuby platforms
gem "tzinfo-data", platforms: %i[windows jruby]

# Solid gem family (cache, queue, and cable) for better performance
gem "solid_cache"
gem "solid_queue"
gem "solid_cable"

# Bootsnap to reduce boot times
gem "bootsnap", require: false

# Kamal for Docker deployments
gem "kamal", require: false

# Thruster for HTTP asset caching/compression
gem "thruster", require: false

# Debugging and security gems (for development and test environments)
group :development, :test do
  gem "debug", platforms: %i[mri windows], require: "debug/prelude"
  gem "brakeman", require: false
  gem "rubocop-rails-omakase", require: false
end

# Development-only gems
group :development do
  gem "web-console" # Console for exceptions pages
end
gem 'execjs'
gem 'therubyracer', platforms: :ruby
gem 'httparty'
gem 'dotenv-rails', groups: [:development, :test]
