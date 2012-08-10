ProjManRails::Application.routes.draw do
  resources :priorities

  resources :tasks

  resources :projects

  resources :groups

  authenticated :user do
    root :to => 'home#index'
  end
  root :to => "home#index"
  devise_for :users
  resources :users, :only => [:show, :index]
end
