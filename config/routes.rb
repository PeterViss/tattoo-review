Rails.application.routes.draw do
  resources :review
  resources :client
  resources :artist


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
