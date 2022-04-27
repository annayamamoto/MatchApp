Rails.application.routes.draw do

  # sessions: :sessions を追加
  devise_for :users,
    controllers: {
      registrations: 'registrations',
      sessions: :sessions
    }

  root 'top#index'

  resources :users, only: [:show, :index]
end
