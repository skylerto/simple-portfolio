Rails.application.routes.draw do
  devise_for :users
  resources :pieces
  resources :portfolios

  resources :users

  root "pages#portfolios"
end
