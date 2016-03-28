Rails.application.routes.draw do
  devise_for :users
  root "projects#index"

  resources :projects, only: [:index, :new, :create, :edit, :update, :destroy]
  resources :areas, only: [:index, :new, :create, :edit, :update, :destroy]
  resources :tabelas, only: [:index, :new, :create, :edit, :update, :destroy]
  resources :fields, only: [:index, :new, :create, :edit, :update, :destroy]
  resources :models, only: [:index, :new, :create, :edit, :update, :destroy]  
end
