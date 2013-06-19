Blog::Application.routes.draw do

  devise_for :users

  namespace :admin do
    match '/', to: 'articles#index', as: :root
    resources :articles
  end
  resources :articles
  root to: 'pages#home'

end
