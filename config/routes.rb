Rails.application.routes.draw do
  # get 'password_resets/new'
  # get 'password_resets/create'
    root "sessions#welcome"
       
    get 'login', to: 'sessions#new'   
    post 'login', to: 'sessions#create'   
    get 'signup', to: 'users#new'
    get '/logout',to: 'sessions#destroy'

    get 'password/reset' , to: 'password_resets#new'   
    post 'password/reset' , to: 'password_resets#create'
    get 'password/reset/edit' , to: 'password_resets#edit'   
    patch 'password/reset/edit' , to: 'password_resets#update' 
  resources :users 
    resources :teachers do
    	resources :comments
  
     end  
end
