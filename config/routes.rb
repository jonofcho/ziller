Rails.application.routes.draw do
  devise_for :admins, path: 'admins'
  resources :collections
  resources :products
  resources :users

  devise_scope :admin do
    get 'sign_in', to: 'devise/sessions#new'
    get 'sign_out', to: 'devise/sessions#destroy'
  end
  # devise_for :admins, path: 'admins'
  root to: "users#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
