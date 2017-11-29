Rails.application.routes.draw do
  get '/' => 'users#new'
  get '/signup' => 'users#new'
  post '/users' => 'users#create'

  get '/signin' => 'sessions#new'
  post '/signin' => 'sessions#create'
  get '/signout' => 'sessions#destroy'

  resources :users do
    resources :questions
    resources :responses
  end

  resources :questions do
    resources :responses
  end

  resources :responses

end
