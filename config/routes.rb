Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :books, only: [:show]

  resources :libraries, only: [:show] do
    resources :authors, only: [:index]
  end
end
