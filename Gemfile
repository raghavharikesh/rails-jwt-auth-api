source "https://rubygems.org"

ruby "3.3.6"

gem "rails", "~> 8.0.1"
gem "pg"
gem "puma"
gem "bcrypt"

# JWT & API
gem "jwt"
gem "rack-cors"

# Serialization
gem "blueprinter"

# Pagination (optional but recommended)
gem "pagy"

# Security & Config
gem "dotenv-rails"

group :development, :test do
  gem "debug"
  gem "rspec-rails"
  gem "factory_bot_rails"
  gem "faker"
  gem "shoulda-matchers"
end

group :development do
  gem "rubocop-rails", require: false
  gem "brakeman"
end
