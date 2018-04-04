Rails.application.routes.draw do
  # get 'user_tasks/create'
  #
  # get 'user_tasks/edit'

resources :tasks, :index, :show do
  resources :user_tasks, :create, :edit, :update
end
  devise_for :users

resources :user_tasks, :index 
  root to: "tasks#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
