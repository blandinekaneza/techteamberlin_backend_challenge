Rails.application.routes.draw do
  resources :nationalities
  resources :payloads
  resources :missions
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
