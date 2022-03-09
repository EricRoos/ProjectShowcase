Rails.application.routes.draw do
  resources :project_tags
  get 'project_search/create'
  resources :projects do
    member do
      post :like
      post :dislike
    end
    resources :requirements, shallow: true
    resources :project_tags 
  end

  resource :landing_page, only: [:show]

  get 'dashboard', action: :show, controller: 'dashboard'

  get 'project_search', action: :new, controller: 'project_search', as: 'new_project_search'
  post 'project_search', action: :create, controller: 'project_search'

  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations'
  }

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root to: "landing_page#show"
end
