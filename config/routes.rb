Rails.application.routes.draw do
  resources :categories do
    resources :products
      end
      resources :products do
        resources :reviews
      end
    end
