# Don't initialize if unconfigured
return unless ENV['EVENHAND_ALGOLIA_ID'] && ENV['EVENHAND_ALGOLIA_KEY']

AlgoliaSearch.configuration = { application_id: ENV['EVENHAND_ALGOLIA_ID'], api_key: ENV['EVENHAND_ALGOLIA_KEY'] }