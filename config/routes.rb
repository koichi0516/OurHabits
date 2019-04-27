Rails.application.routes.draw do

  get '/' => 'users#top', as: 'top'
  get 'users/about'
  get '/mypage/:id' => 'users#mypage', as: 'mypage'
  get 'habits/:id/rank' => 'records#rank', as: 'rank'

  devise_for :users
  devise_for :admins, controllers: {
  sessions:      'admins/sessions',
  passwords:     'admins/passwords',
  registrations: 'admins/registrations'
}

  get 'admins/home' => 'admins#home', as: 'admin_home'
  get 'admins/habits' => 'habits#admin_index', as: 'admin_habits'
  get 'admins/habit/:id' => 'habits#admin_show', as: 'admin_habit'
  get 'admins/chats' => 'chats#admin_index', as: 'admin_chats'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :users, only: [:index, :show, :edit, :update, :destroy]
  resources :messages, only: [:new, :index, :show, :create]
  resources :habits, only: [:new, :create, :index, :show, :destroy, :edit, :update] do
      resources :chats, only: [:index, :create, :edit, :update, :destroy]
  end
  resources :user_habits, only: [:index, :create, :show, :destroy] do
      resources :records, only: [:new, :create, :index, :edit, :update,:destroy]
  end

end
