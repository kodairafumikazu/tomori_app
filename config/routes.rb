Rails.application.routes.draw do
  devise_for :owners, controllers: {
    sessions: 'owners/sessions'
  }
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root "items#index"
   
  resources :items, only: [:index, :show]
  resources :store_guides, only: :index
  resources :accesses, only: :index

  resources :shoppings 
    resources :orders, only: [:create, :index]
end
