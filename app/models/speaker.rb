class Speaker < ApplicationRecord
  belongs_to :user

  has_many :speaker_languages, dependent: :destroy # delete speaker_language if speaker deleted
  has_many :languages, through: :speaker_languages

  has_many :speaker_topics, dependent: :destroy # delete speaker_topic if speaker deleted
  has_many :topics, through: :speaker_topics
end
