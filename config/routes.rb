Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'

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

  mount LetterOpenerWeb::Engine, at: '/letter_opener' if Rails.env.development?
end
