Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get "lists/new", to: "lists#new" # The `new` route
  post "lists", to: "lists#create"

  get 'lists', to: 'lists#index'
  get 'lists/:id', to: 'lists#show', as: :list

  delete "list/:id", to: "lists#destroy", as: :list_delete

  resources :lists, except: [:new, :create, :index, :show, :edit, :update, :destroy] do
    resources :bookmarks, only: [ :new, :create ]
  end

  resources :bookmarks, only: :destroy

end
