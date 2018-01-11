Rails.application.routes.draw do
  get 'welcome/index'
    resources :property

  get '/show', to: "property#show"

  root 'welcome#index'

end
