Rails.application.routes.draw do
  resources :sleeps, only: [:index]
  resources :sleep_events, only: [:create]
  resources :users, only: [:index] do
    resources :followers, only: [:index, :create]
    delete "followers", to: "followers#destroy"
  end
end
