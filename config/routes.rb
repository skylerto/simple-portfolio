Rails.application.routes.draw do
  resources :pieces

  root "pieces#index"
end
