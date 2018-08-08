Rails.application.routes.draw do


 root 'welcome#index'

 resources :users do
  shallow do
   resources :trails do
     resources :comments
    end
   end
 end
 resources :trails, only: [:index]



 get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'
  get '/signup' => 'users#new'
  post '/signup' => 'users#create'
  get '/auth/facebook/callback' => 'sessions#create'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html


end
