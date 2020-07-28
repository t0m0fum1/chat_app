Rails.application.routes.draw do
  devise_for :users
  # get 'messages/index'
  root "rooms#index"
  resources :users, omly: [:edit, :update]
  resources :rooms, omly: [:new, :create] do
    resources :messages, only: [:index, :create]
  end

end
