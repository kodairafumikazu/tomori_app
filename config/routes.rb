Rails.application.routes.draw do
  devise_for :owners, controllers: {
    sessions: "owners/sessions",
    passwords: "owners/passwords",
    registrations: "owners/registrations"
    #shoppings: "owners/shoppings"
  }

    # devise_scope :owner do
    #   get 'owners/:id', to:
    #   'owners/shoppings#new'
    #   'owners/shoppings#show'
    # end

  devise_for :users,  controllers: {
    sessions: "users/sessions",
    passwords: "users/passwords",
    registrations: "users/registrations"
  }
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  
   
  resources :items, only: [:index, :show]
  resources :store_guides, only: :index
  resources :accesses, only: :index

  root to: "shoppings#index"
  resources :shoppings do
    resources :orders, only: [:create, :index]
  end
end
