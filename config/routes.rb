Rails.application.routes.draw do
  devise_for :owners, controllers: {
    sessions: "owners/sessions",
    passwords: "owners/passwords",
    registrations: "owners/registrations"
  }
  devise_for :users,  controllers: {
    sessions: "users/sessions",
    passwords: "users/passwords",
    registrations: "users/registrations"
  }
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root "items#index"
   
  resources :items, only: [:index, :show]
  resources :store_guides, only: :index
  resources :accesses, only: :index

  resources :shoppings do
    resources :orders, only: [:create, :index]
  end
end
