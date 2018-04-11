Rails.application.routes.draw do
  resources :monsters
  resources :store, only: [:index]
  resources :quest, only: [:index]

  devise_for :users, controllers: { sessions: 'users/sessions' }
  resources :users, only: [:show]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "pages#index"

  get '/swordButton', to: 'store#swordButton', as: 'swordButton'
  get '/spellbookButton', to: 'store#spellbookButton', as: 'spellbookButton'
  get '/helmetButton', to: 'store#helmetButton', as: 'helmetButton'
  get '/chestButton', to: 'store#chestButton', as: 'chestButton'
  get '/shouldersButton', to: 'store#shouldersButton', as: 'shouldersButton'
  get '/glovesButton', to: 'store#glovesButton', as: 'glovesButton'
  get '/legsButton', to: 'store#legsButton', as: 'legsButton'
  get '/bootsButton', to: 'store#bootsButton', as: 'bootsButton'

    get '/questButton', to: 'quest#questButton', as: 'questButton'
  get '/newQuestButton', to: 'quest#newQuestButton', as: 'newQuestButton'
end
