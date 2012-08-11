ProjManRails::Application.routes.draw do
  resources :statuses

  resources :priorities
  
  resources :projects do
    resources :tasks
  end
  match 'projects/delete/:id' => 'projects#delete'
  match 'projects/:id/my_tasks' => 'projects#my_tasks'
  #resources :tasks

  resources :groups

  authenticated :user do
    root :to => 'home#index'
  end
  root :to => "home#index"
  devise_for :users
  resources :users, :only => [:show, :index]
  
end
