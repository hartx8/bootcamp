Rails.application.routes.draw do
  devise_for :users
  
  root to: 'pages#index'
  get '/pages/admin_panel', to: 'pages#admin_panel'
   #root 'pages#main'
  # get '/register', to: 'devise/registrations#new'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
