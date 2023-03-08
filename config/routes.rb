Rails.application.routes.draw do
  devise_for :views
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # Defines the root path route ("/")
  # root "articles#index"
  devise_for :applicants
  resources :job_openings
  resources :applicants, only: [:index, :show, :new, :create]
  root 'job_openings#index'
end
