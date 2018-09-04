Rails.application.routes.draw do
  root "subs#index"

  resources :subs, only: [:new, :create, :edit, :update]
  
  get "/subs", to: "subs#index"
  get "/subs/:id" to: "subs#show"
  delete "/subs/:id" to: "subs#destroy"

end
