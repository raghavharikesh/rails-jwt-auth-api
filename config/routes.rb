Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      namespace :auth do
        post 'register', to: 'registrations#create'
        post 'login',    to: 'sessions#create'
        delete 'logout', to: 'sessions#destroy'
      end

      resources :users, only: [:index, :show]
    end
  end
end