Rails.application.routes.draw do

  resources :loans
  resources :employment_histories
  resources :spouses
  resources :buyers
  resources :users
  
  root   'sessions#new'
  get    'login',    to: 'sessions#new'
  post   'login',    to: 'sessions#create'
  get    'logout',   to: 'sessions#destroy'
  
  get    'home',      to: 'users#home'
  get    'add_loan',  to: 'loans#new'
  get    'view_loan', to: 'loans#view'
end
