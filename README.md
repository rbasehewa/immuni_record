# README

* Deployment instructions

    cat > README.md << 'EOF'
# Immuni Record

    Simple Rails app.

## Requirements
- Ruby 3.4.x
- Rails 8.1.x
- SQLite

## Setup 
```bash
bundle install
    bundle exec rails db:prepare
    bundle exec rails s
