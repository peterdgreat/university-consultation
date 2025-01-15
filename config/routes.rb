Rails.application.routes.draw do
  get 'consultants/index'
  get 'consultants/show'
  get 'consultant_requests/create'
  get 'consultant_requests/index'
  get 'consultant_requests/approve'
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  root to: "home#index"
  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  resources :plans, only: [:index] do
    member do
      post :subscribe
    end
  end

  resources :consultant_requests, only: [:create, :index] do
    member do
      patch :approve
    end
  end
  resources :consultants, only: [:index, :show]


  # Defines the root path route ("/")
  # root "posts#index"
end
