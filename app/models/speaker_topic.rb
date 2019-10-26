class SpeakerTopic < ApplicationRecord
  belongs_to :topic
  belongs_to :speaker
end
