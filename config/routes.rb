Stabloccit::Application.routes.draw do

  devise_for :users
  # get "posts/index"
  # get "posts/show"
  # get "posts/new"
  # get "posts/edit"
  # get "welcome/index"
  # get "welcome/about"
  # this above is what existed before we changed it to the below

  resources :topics do
    resources :posts, except: [:index]
  end

  match "about", to: 'welcome#about', via: :get


  root to: 'welcome#index'

end
