Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root to: 'schedules#index'
  resources :schedules, only: :index
  resources :specs, only: [:index, :new, :create]
end
