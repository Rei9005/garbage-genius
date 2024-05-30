Rails.application.routes.draw do
  devise_for :users

  root to: 'pages#home'
  get 'dash', to: 'users#dash', as: 'dash'
  get 'calendar', to: 'users#calendar', as: 'calendar'
  resources :users, only: [:edit, :update]
  patch  "settings", to: "users#settings", as: :settings

  resources :spots, only: [:index, :show] do
    resources :users, only: [:update]
  end

  resources :spot_dates, only: [:create] do
    resources :spot_visits, only: [:create]
    resources :help_requests, only: [:create]
  end

  resources :help_requests, only: [:update]

  resources :alerts, only: [:index]
  post "/callback", to: 'pages#line'
end
