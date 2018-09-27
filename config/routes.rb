Rails.application.routes.draw do
  devise_for :users
  
  root to: 'pages#index'
  get '/admin_pages/admin_main', to: 'admin_pages#admin_main'
  get '/user/index', to: 'user#index'
   #root 'pages#main'
  # get '/register', to: 'devise/registrations#new'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end