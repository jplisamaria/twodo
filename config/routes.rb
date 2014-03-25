Rails.application.routes.draw do

  root 'lists#index'

  resources :lists, only: [:create, :update, :destroy] do
    resources :tasks, only: [:create] 
  end

  post "tasks/:id/complete" => 'completed_tasks#create', 
    as: :complete_task
end
