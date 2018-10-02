Rails.application.routes.draw do
  devise_for :users
  require 'sidekiq/web'
  mount Sidekiq::Web=> '/sidekiq'
  
  root to: 'pages#index'
  get '/pages/:task_type', to: 'pages#sorted', as: 'sorted'
  get '/help', to: 'pages#help'

  get '/report/index', to: 'reports#index'
  get '/report', to: 'reports#new'
  patch '/report:id', to: 'reports#update', as: 'report_answer'
  post '/report', to: 'reports#create'
  get '/admin_pages/admin_main', to: 'admin_pages#admin_main'

  get '/users/index', to: 'users#index'
  get '/users/:id', to: 'users#user_info', as: 'users'
  get '/users/edit/:id', to: 'users#edit', as: 'edit_user'
  patch '/users/edit/:id/', to: 'users#update', as: 'user_update'


  get '/tasks/new', to: 'tasks#new'
  get '/tasks/:id', to: 'tasks#task_info', as: 'tasks'
  post '/tasks/new', to: 'tasks#create' 
  post '/tasks/:id' , to: 'tasks#perform', as: 'perform_task'

  

   #root 'pages#main'
  # get '/register', to: 'devise/registrations#new'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end