Rails.application.routes.draw do
  resources :products
  namespace :admin do
      resources :products
    end	
    resources :my_modules
    namespace :admin do 
        resources :my_modules  
    end   
     # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
#Rails.application.routes.draw do
  #amespace :admin do
      #resources :products
    #end  #namespace :admin do
      #resources :my_modules
      mount Alchemy::Engine => '/'
    end

