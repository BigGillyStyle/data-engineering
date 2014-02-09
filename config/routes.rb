DataEngineering::Application.routes.draw do
      
  resources :line_items

  resources :orders

  resources :purchasers

  resources :products

  resources :merchants

  resources :tsv do
    collection { post :upload }
  end

  root "pages#home"
  
  get "/home", to: "pages#home", as: "home"
end
