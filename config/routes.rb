Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'hipster_ipsum#index'

  resource :hipster_ipsum, only: [:index]
end
