Rails.application.routes.draw do

  resources :spouses
  resources :buyers
  resources :users
  
  root   'sessions#new'
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  get    '/logout',  to: 'sessions#destroy'
  
  get    '/home',     to: 'users#home'
end
