Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  #nome do controler + nome da action
  root to: "static_pages#index"
  get 'Sobre',    to: 'static_pages#sobre'
  get 'Contato',  to: 'static_pages#contato'
end
