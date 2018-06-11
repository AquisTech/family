Rails.application.routes.draw do
  resources :relations
  resources :people do
    resources :relationships
  end
  get 'home/index'
  root :to => 'home#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
