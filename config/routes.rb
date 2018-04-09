Rails.application.routes.draw do
  resources :monsters
  resources :users
  devise_for :users, controllers: { sessions: 'users/sessions' }
  resources :users, only: [:show]
  

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "pages#index"

end
