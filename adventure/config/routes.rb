Rails.application.routes.draw do
  
  
 root 'welcome#index'

 resources :users, only: [:new, :create, :show] do 
  resources :trails, only: [:index, :new,  :edit]

 end 
 resources :trails, only: [:show, :create, :update, :destroy]
  
 resources :parks, only: [:index, :show]

 get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'
  get '/signup' => 'users#new'
  post '/signup' => 'users#create'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html


end
