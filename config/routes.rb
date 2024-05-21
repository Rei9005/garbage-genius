Rails.application.routes.draw do

    devise_for :users

    root to: 'pages#home'
    get 'dash', to: 'users#dash', as: 'dash'
    resources :users, only: [:edit, :update]
    resources :spots, only: [:index, :show] do
      resources :users, only: [:update]
    end
    resources :spot_dates, only: [:create] do
      resources :spot_visits, only: [:create]
    end
    resources :alerts, only: [:index]
end
