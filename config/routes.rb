Rails.application.routes.draw do
  resources :responses
  resources :questions
  resources :votes
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
