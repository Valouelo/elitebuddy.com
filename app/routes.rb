Rails.application.routes.draw do
  devise_for :users

  resources :buddies do
    resources :bookings, only: [:create, :index]
  end

  root 'buddies#index'
end
