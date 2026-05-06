# Rails JWT Auth API

Modern, secure, and production-ready JWT Authentication API built with Ruby on Rails 8.

## Features

- User Registration & Login
- Secure JWT Authentication
- RESTful API with versioning
- Clean architecture with Services & Serializers
- Proper error handling

## Tech Stack

- Ruby on Rails 8
- PostgreSQL
- JWT
- Blueprinter (Serialization)

## Setup

```bash
# Clone the repo
git clone https://github.com/raghavharikesh/rails-jwt-auth-api.git
cd rails-jwt-auth-api

# Install dependencies
bundle install

# Setup database
rails db:create db:migrate

# Copy environment variables
cp .env.example .env
