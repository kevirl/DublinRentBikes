Rails.application.routes.draw do
  #get 'sessions/new'

  get 'users/new'

  get 'static_pages/home'

  get 'about' => 'static_pages#about'

  get 'contact' => 'static_pages#contact_us'
  
  get 'cat' => 'rental_items#index'
  
  get 'signup' => 'users#new'
  
  get 'catAdmin' => 'rental_items#catAdmin'
  
  get 'accInfo' => 'sessions#accInfo'
  
  get 'login'=> 'sessions#new'
  post 'login' => 'sessions#create'
  delete 'logout' => 'sessions#destroy'

  resources :rental_items
  resources :users
  
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'static_pages#home'

end
