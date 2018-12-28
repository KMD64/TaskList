Rails.application.routes.draw do

  root to: 'todo#index'
  post 'todo/update'
  post 'todo/create'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
