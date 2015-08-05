Rails.application.routes.draw do
  resources :pieces
  resources :portfolios

  root "portfolios#index"
end
