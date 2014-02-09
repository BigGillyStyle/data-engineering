DataEngineering::Application.routes.draw do
      
  resources :orders

  resources :purchasers

  resources :products

  resources :merchants

  root "pages#home"
  
  get "/home", to: "pages#home", as: "home"
end
