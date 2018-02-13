Rails.application.routes.draw do

  get 'admin' => 'admin#home'

  devise_for :admins, path: 'admins'
  
  resources :reservations
  resources :collections
  resources :users
  resources :products

  devise_scope :admin do
    get 'sign_in', to: 'devise/sessions#new'
    get 'sign_out', to: 'devise/sessions#destroy'
  end
  # devise_for :admins, path: 'admins'
  root to: "users#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
