Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  # CREATE A TASK
  # 1. display the task
  get 'tasks/new', to: 'tasks#new'
  # 2. send the new task form (post)
  post 'tasks', to: 'tasks#create'

  # READ - all
  get 'tasks', to: 'tasks#index'

  # READ - one
  get 'tasks/:id', to: 'tasks#show', as: :task

  # UPDATE a task
  # 1. display the form
  get 'tasks/:id/edit', to: 'tasks#edit', as: :task_edit
  # 2. send form
  patch 'tasks/:id', to: 'tasks#update', as: :task_update

  # DELETE a task
  delete 'tasks/:id', to: 'tasks#destroy', as: :task_destroy
end
