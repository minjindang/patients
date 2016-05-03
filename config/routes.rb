Rails.application.routes.draw do
  #devise_for :users
  root 'patients#index'
  resources :patients do
    member do
      post 'viewed_counts'
    end
  end
end
