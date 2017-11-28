Rails.application.routes.draw do

  resources :users do
    resources :questions
    resources :responses
  end

  resources :questions do
    resources :responses
  end

end
