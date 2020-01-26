Rails.application.routes.draw do
  get 'chat_rooms/index'
  get 'chat_rooms/new'
  devise_for :users

  resources :chat_rooms, only: [:new, :create, :show, :index]
  root 'chat_rooms#index'
  mount ActionCable.server => '/cable'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
