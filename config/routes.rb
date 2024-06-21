Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  get "up" => "rails/health#show", as: :rails_health_check

  resources :vinyls, only: %i[index show]
  resources :orders, only: [:show, :update] do
    member do
      post 'add_vinyl/:vinyl_id', to: 'orders#add_vinyl', as: 'add_vinyl'
    end
  end
end
