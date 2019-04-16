Rails.application.routes.draw do
  resources :sleeps, only: [:index]
  resources :sleep_events, only: [:create]
  resources :users, only: [:index, :show] do
    resources :followers, only: [:index, :create]
  end
  namespace :user do
    resources :followers, only: [:index, :create]
    resources :followings, only: [:index, :destroy]
    get "timeline", to: "timeline#index"
  end
end
