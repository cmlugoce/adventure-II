Rails.application.routes.draw do
  get 'parks/index'
  get 'parks/show'
  get 'sessions/new'
  get 'sessions/create'
  get 'trails/new'
  get 'trails/show'
  get 'trails/create'
  get 'trails/edit'
  get 'trails/update'
  get 'users/new'
  get 'users/show'
  get 'users/create'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
