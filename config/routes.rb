Rails.application.routes.draw do
  get 'project_search/create'
  resources :projects do
    resources :requirements, shallow: true
  end

  resource :landing_page, only: [:show]

  get 'dashboard', action: :show, controller: 'dashboard'

  get 'project_search', action: :new, controller: 'project_search'
  post 'project_search', action: :create, controller: 'project_search'

  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations'
  }

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root to: "landing_page#show"
end
