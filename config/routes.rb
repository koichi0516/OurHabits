Rails.application.routes.draw do

  get 'users/about'
  # get 'user_habits/:id/record/new' => 'records#new', as: 'new_record'
  get 'habits/:id/rank' => 'records#rank', as: 'rank'

  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get '/' => 'users#top', as: 'top'
  get '/mypage/:id' => 'users#mypage', as: 'mypage'
  resources :users, only: [:index, :show, :edit, :update]
  resources :messages, only: [:new, :index, :show, :create]
  resources :habits, only: [:create, :index, :show, :destroy, :edit, :update] do
      resources :chats, only: [:index, :show, :create, :edit, :update, :destroy]
  end
  resources :user_habits, only: [:index, :create, :show, :edit, :update, :destroy] do
      resources :records, only: [:new, :create, :index, :edit, :update,:destroy]
  end
end
