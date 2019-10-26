class SpeakerLanguage < ApplicationRecord
  belongs_to :topic
  belongs_to :language
end
