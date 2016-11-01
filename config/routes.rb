Rails.application.routes.draw do

  resources :payments
  resources :loans
  resources :buyers
  resources :users
  
  root   'sessions#new'
  get    'login',         to: 'sessions#new'
  post   'login',         to: 'sessions#create'
  get    'logout',        to: 'sessions#destroy'
  
  get    'home',          to: 'users#home'
  get    'add_loan',      to: 'loans#new'
  get    'view_loan',     to: 'loans#view'
  get    'view_payment',  to: 'payments#view'
  
  get    'reports/view/',  to: 'reports#view'
  get    'view_reports/',  to: 'reports#view'
  
  get    'buyer_search',   to: 'buyers#search'
end
