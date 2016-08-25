Rails.application.routes.draw do
  get 'users/new'

  get 'static_pages/home'

  get 'about' => 'static_pages#about'

  get 'contact' => 'static_pages#contact_us'
  
  get 'cat' => 'rental_items#index'
  
  get 'signup' => 'users#new'

  resources :rental_items
  resources :users
  
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'static_pages#home'

end
