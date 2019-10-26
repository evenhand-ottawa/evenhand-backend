class SpeakerLanguage < ApplicationRecord
  belongs_to :speaker
  belongs_to :language
end
