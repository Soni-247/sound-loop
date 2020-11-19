Rails.application.routes.draw do
  devise_for :users
  resources :listings do
    resources :transaction, only:[:new, :create]
  end

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: "listings#index"

end
