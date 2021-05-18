Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # READ - all
  get 'tasks', to: 'tasks#index'

  # READ - one
  get 'tasks/:id', to: 'tasks#show', as: :task
end
