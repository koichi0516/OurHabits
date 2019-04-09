Rails.application.routes.draw do
  get 'messages/new'
  get 'messages/create'
  get 'messages/index'
  get 'messages/show'
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get '/' => 'users#top', as: 'top'
  get '/mypage/:id' => 'users#mypage', as: 'mypage'
  resources :users, only: [:index, :show, :edit, :update]
  resources :messages, only: [:new, :index, :show, :create]
end
