Rails.application.routes.draw do
  
  
  devise_for :users
  get 'cart/index'

  resources :items
 root 'staticpage#home'
 
 
   get '/LogIn' => 'user#login'
    get '/LogOut' => 'user#logout'
 
 get '/products'=>'items#index'
  get '/help' =>'staticpage#help'

  get '/about' =>'staticpage#about'
  
   get '/cart' =>'cart#index'
   get '/cart/:id', to: 'cart#add'
    get '/clearcart' =>'cart#clearCart'
    
    get '/cart/remove/:id' => 'cart#remove'
     get '/cart/decrease/:id' =>'cart#decrease'

  #get 'staticpage/contact'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
