Rails.application.routes.draw do

  post "tasks", to: "tasks#create"
  get "tasks/new", to: "tasks#new"
  get 'tasks', to: 'tasks#index'
  get "tasks/:id", to: "tasks#show", as: "task"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

