# config/routes.rb
Rails.application.routes.draw do
  root 'welcome#welcome'

  resources :tasks do
    collection do
      get 'completed', to: 'tasks#completed', as: 'completed_tasks'
      patch 'update_multiple'
    end

    member do
      patch 'update_status'
    end
  end
end