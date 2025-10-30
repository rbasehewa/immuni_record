# README

1. What the Application Is

    ImmuniRecord is a simple yet complete immunisation management system — built in Ruby on Rails — that keeps track of:

- Patients (who receive vaccines),

- Vaccines (the available vaccine types), and

- Immunisations (which vaccine each patient received, when, by whom, and what’s due next).

    It’s like a lightweight digital immunisation register for clinics or healthcare staff.

2. Relationships Between Models

| Model            | Relationship                                   | Description                                                                                              |
| ---------------- | ---------------------------------------------- | -------------------------------------------------------------------------------------------------------- |
| **Patient**      | `has_many :immunisations`                      | Each patient can have multiple immunisations.                                                            |
| **Vaccine**      | `has_many :immunisations`                      | Each vaccine type can be administered to many patients.                                                  |
| **Immunisation** | `belongs_to :patient`<br>`belongs_to :vaccine` | A join record that links one patient and one vaccine together with details (date, batch, due date, etc). |

🧠 In ERD (Entity Relationship Diagram) form:

Patient (1) ───< (many) Immunisation (many) >─── (1) Vaccine


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
