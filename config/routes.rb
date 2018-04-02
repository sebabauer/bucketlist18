Rails.application.routes.draw do
  get 'user_tasks/create'

  get 'user_tasks/edit'

resources :tasks, only: :index do
  resources :user_tasks, :create, :edit 
end
  devise_for :users

  root to: "tasks#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
