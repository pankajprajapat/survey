Rails.application.routes.draw do
  resources :questions, except: [:index, :show]
  resources :observes
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
