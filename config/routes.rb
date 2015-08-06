Rails.application.routes.draw do
  devise_for :users
  resources :pieces
  resources :portfolios

  root "pages#portfolios"
end
