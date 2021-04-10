Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # verb 'path', to: 'controller#action'
  # Display all tasks
  get 'tasks', to: 'tasks#index'
  # Display one task
  get 'tasks/new', to: 'tasks#new'
  get 'tasks/:id', to: 'tasks#show', as: :task
  # New task
  # Create task
  post 'tasks', to: 'tasks:create'
end
