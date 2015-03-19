Rails.application.routes.draw do
  resources :homes

  resources :user_bets

  resources :events

  devise_for :users

  root 'homes#index'
end
