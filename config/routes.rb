Rails.application.routes.draw do

  namespace :api do
    namespace :v1 do
      resources :reservations
      resources :rooms
      resources :yados
    end
  end

  resources :reservations
  resources :rooms
  resources :yados
end
