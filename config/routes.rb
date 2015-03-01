Rails.application.routes.draw do
  devise_for :users
  resources :testrs
  root 'testrs#index'
end
