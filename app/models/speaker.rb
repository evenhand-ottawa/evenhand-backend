class Speaker < ApplicationRecord
  include AlgoliaSearch

  belongs_to :user

  has_many :speaker_languages, dependent: :destroy # delete speaker_language if speaker deleted
  has_many :languages, through: :speaker_languages

  has_many :speaker_topics, dependent: :destroy # delete speaker_topic if speaker deleted
  has_many :topics, through: :speaker_topics

  algoliasearch do
    attributes Speaker.attribute_names
    attribute :languages do
      languages.map do |langugage|
        langugage.name
      end
    end
    attribute :topics do
      topics.map do |topic|
        topic.name
      end
    end
    attribute :user do
      user.attributes.except!("password")
    end
    attributesForFaceting [:topics, :languages]
  end
end
