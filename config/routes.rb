Rails.application.routes.draw do
  resources :contacts
  resources :users, only: [:new, :create]
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  #nome do controler + nome da action
  root to: "static_pages#index"
  get 'sobre',    to: 'static_pages#sobre'
  
  get 'cadastro', to: 'users#new'
  get 'entrar',   to: 'sessions#new'
  post 'entrar',  to: 'sessions#create'
  delete 'sair',  to: 'sessions#destroy'
end
  