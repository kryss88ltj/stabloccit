Stabloccit::Application.routes.draw do

  devise_for :users
  resources :users, only: [:update]

  resources :topics do
    resources :posts, except: [:index]
      resources :comments, only: [:create]
  end

  match "about", to: 'welcome#about', via: :get


  root to: 'welcome#index'

end
