Rails.application.routes.draw do
  
  root to: "listings#index"
  devise_for :users
  resources :listings do 
    resources :transaction, only: [:new, :create]
  end

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
 get 'history', to: 'history#index'
 get 'history/:id', to: 'history#show', as: 'purchased'

end
