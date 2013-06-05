Bibliotravel::Application.routes.draw do


  match 'discover' => "books#index", :via => :get
  match 'about' => 'welcome#about'
  match 'thanks' => 'welcome#thanks'
  match 'home' => 'welcome#home'


  resources :books
  resources :users
  
  get "sessions/create"
  get 'sessions/new'
  root :to => 'welcome#index'

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'
  match 'auth/:provider/callback', to: 'sessions#create'
  match 'auth/failure', to: redirect('/')
  match 'signin', to: 'sessions#new', as: 'signin'
  match 'signout', to: 'sessions#destroy', as: 'signout'


end
