Rails.application.routes.draw do
  devise_for :users
  resources :users
  resources :characters_media
  resources :media
  resources :characters

  root to: "home#index"
end
