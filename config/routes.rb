Rails.application.routes.draw do


  namespace :api do
    namespace :v1 do
      get '/me/:token', to: 'reservations#show'
      resources :yados do
        resources :rooms
        resources :reservations
        resources :schedules
      end
    end
  end

  resources :reservations
  resources :rooms
  resources :yados
  resources :schedules
end
