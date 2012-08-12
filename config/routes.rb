ProjManRails::Application.routes.draw do
  
  resources :statuses
  resources :priorities
  resources :projects do
    resources :tasks
  end
  resources :groups do
  	resources :notes
  end
  
  #custom routes
  match 'projects/delete/:id' => 'projects#delete'
  match 'projects/:id/my_tasks' => 'projects#my_tasks'
  
  #match 'groups/join_group/:id' => 'groups#join_group'
  #resources :tasks

  authenticated :user do
    root :to => 'home#index'
  end
  root :to => "home#index"
  devise_for :users
  resources :users, :only => [:show, :index]
  
end
