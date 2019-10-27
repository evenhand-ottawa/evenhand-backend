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

## Development
* `master` is for production, `development` is for development
* Don't commit directly to `development` or `master`; use feature branches and PRs instead

## Deployment
Deployment is currently automated.
The development environment deploys to https://evenhand-backend.herokuapp.com/

## Administration
Use the Heroku CLI.

Handy commands:
```
heroku run -a evenhand-backend rake <tasks> # run rake tasks
heroku run -a evenhand-backend rails c # Rails console
heroku -a evenhand-backend logs --tail -n 100 # tail logs
```

## Algolia
### Configuring
To use full-text search you need an Algolia API key.

Use separate applications for each environment: https://www.algolia.com/doc/guides/sending-and-managing-data/manage-environments/#one-application-per-environment

In development environments, create `config/app_environment_config.rb` with the following content:
```ruby
ENV['EVENHAND_ALGOLIA_ID'] = '<id>'
ENV['EVENHAND_ALGOLIA_KEY'] = '<admin key>'
```

### Reindexing
**TODO:** Not clear that this works. Try running contents of `lib/tasks/search.rake` from `rails c` if needed.

Run `rake search:reindex` to reindex data.

Note that indexing occurs automatically and this is only necessary after first configuring Algolia.
https://www.algolia.com/doc/framework-integration/rails/indexing/indexing/?language=ruby#automatic-updates 

### Alternatives
https://www.viget.com/articles/implementing-full-text-search-in-rails-with-postgres/
https://coderwall.com/p/vngr0a/simple-full-text-search-using-postgres-on-rails 

## TODO
* Authentication
* Pagination
* Using `permit` properly/safely for parameters
* User logins
* Emails
* Migrate to Postgres full-text search?