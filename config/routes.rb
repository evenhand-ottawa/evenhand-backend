Rails.application.routes.draw do
  resources :speaker_languages
  resources :languages
  resources :speaker_topics
  resources :users
  resources :speakers
  resources :topics
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
