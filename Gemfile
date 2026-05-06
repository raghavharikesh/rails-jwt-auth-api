source "https://rubygems.org"

ruby "3.3.6"

gem "rails", "~> 8.0.1"
gem "pg"
gem "puma", "~> 6.4"
gem "bcrypt"

# JWT & Security
gem "jwt"
gem "rack-cors"

# Performance
gem "bootsnap", require: false

# Serialization
gem "jsonapi-serializer"

# Optional but Recommended
gem "oj"                    # Faster JSON parsing & rendering
gem "pagy"                  # Pagination
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