Stabloccit::Application.routes.draw do
  # get "posts/index"
  # get "posts/show"
  # get "posts/new"
  # get "posts/edit"
  # get "welcome/index"
  # get "welcome/about"
  # this above is what existed before we changed it to the below

  resources :posts

  match "about", to: 'welcome#about', via: :get


  root to: 'welcome#index'

end
