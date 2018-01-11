Rails.application.routes.draw do
  get 'welcome/index'
    resources :property
  root 'welcome#index'

end
