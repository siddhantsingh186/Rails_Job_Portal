Rails.application.routes.draw do
  devise_for :applicants
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # Defines the root path route ("/")
  # root "articles#index"
  # Write root path to login page

  root "landing_page#index" 


  resources :job_openings do
    resources :job_applications
  end

  resources :applicants do
    resources :job_applications
  end
  
  resources :job_applications do
    member do
      get :accept
      get :reject
    end
  end

  

end
