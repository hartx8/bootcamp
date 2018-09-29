Rails.application.routes.draw do
  devise_for :users

  require 'sidekiq/web'
  mount Sidekiq::Web=> '/sidekiq'
  
  root to: 'pages#index'

 # resources :tasks, only: [:create, :task_info] # HMMMMM>???

  get '/admin_pages/admin_main', to: 'admin_pages#admin_main'
  get '/users/index', to: 'users#index'
  get '/users/:id', to: 'users#user_info', as: 'users'
  get '/users/edit/:id', to: 'users#edit', as: 'edit_user'
  patch '/user/edit/:id/', to: 'user#update'
  get '/tasks/new', to: 'tasks#new'
  get '/tasks/:id', to: 'tasks#task_info', as: 'tasks'
  get '/pages/help', to: 'pages#help'
  post '/tasks/new', to: 'tasks#create' 

   #root 'pages#main'
  # get '/register', to: 'devise/registrations#new'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end