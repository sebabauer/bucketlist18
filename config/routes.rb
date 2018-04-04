Rails.application.routes.draw do
  # get 'user_tasks/create'
  #
  # get 'user_tasks/edit'

resources :tasks, :index, :show do
  delete "delete_user_tasks", to: "user_tasks#destroy", as: "user_task"
  resources :user_tasks, except: :destroy
end
  devise_for :users

resources :user_tasks, :index
  root to: "tasks#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
