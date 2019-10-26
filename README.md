# README


## Setup
* Use Rails 2.6.x. Ideally, use `rbenv` or `rvm`.
* `bundle install`
* Create a Postgres database using the `development` credentials in `config/database.yml`.
* * **Homebrew (OS X):**
* * `brew install postgres`
* * `brew services start postgresql`
* * `createuser evenhand --createdb`
* * `psql postgres`
* * `\du` - You should see the create user here.
* `rails db:environment:set RAILS_ENV=development`
* `rails db:setup`
