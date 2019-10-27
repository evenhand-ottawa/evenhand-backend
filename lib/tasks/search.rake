namespace :search do
  desc "Reindexes all models which include AlgoliaSearch"
  task reindex: :environment do
    Rails.application.eager_load! # Ensure all models are loaded (required in development).
    algolia_models = ActiveRecord::Base.descendants.select{ |model| model.respond_to?(:reindex) }
    algolia_models.each(&:reindex)
  end

end
