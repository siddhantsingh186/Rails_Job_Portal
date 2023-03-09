Rails.application.routes.draw do
  devise_for :applicants
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # Defines the root path route ("/")
  # root "articles#index"
  # Write root path to login page

  root "job_openings#index"
  resources :job_openings do
    resources :applications
  end

  resources :applicants do
    resources :applications
  end
  

end
