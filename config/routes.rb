Rails.application.routes.draw do
  # resources :hero_powers, only: :index
  resources :powers, only: [:index, :show, :update]
  resources :heroes, only: [:index, :show]
end
