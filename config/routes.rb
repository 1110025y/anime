Rails.application.routes.draw do
  get 'blogs/index'
  devise_for :users
  get 'messages/index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root "messages#index"
  resources :tweets do
    resources :comments, only: :create
  end
  resources :users, only: [:show]
  resources :blogs

end
