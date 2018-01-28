Rails.application.routes.draw do
  namespace :api do
    resources :locations
    resources :users
    resources :trips
    post '/auth', to: 'auth#create'
    get '/current_user', to: 'auth#show'
  end
end
