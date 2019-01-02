Rails.application.routes.draw do

  root to: 'todo#index'
  post 'update', to: 'todo#update'
  post 'create', to: 'todo#create'
  get 'gettodolist', to:'todo#gettodolist'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
