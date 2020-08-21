Rails.application.routes.draw do
  get 'blogs/index'
  devise_for :users, controllers: {
    registrations: 'users/registrations',
  }
  devise_scope :user do
    get 'messages', to: 'users/registrations#new_message'
    post 'messages', to: 'users/registrations#create_message'
  end
  # get 'messages/index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root "messages#index"
  resources :tweets do
    resources :comments, only: :create
    collection do
      get 'search'
    end
  end
  resources :users, only: [:show]
  resources :blogs
  resources :messages

end
