Rails.application.routes.draw do

  mount ActionCable.server => '/cable'

  # sessions: :sessions を追加
  devise_for :users,
    controllers: {
      registrations: 'registrations',
      sessions: :sessions
    }

  root 'top#index'

  resources :users, only: [:show, :index]

  resources :reactions, only: [:create]

  resources :matching, only: [:index]

  resources :chat_rooms, only: [:create, :show]
end
