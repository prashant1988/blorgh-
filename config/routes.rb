Blorgh::Engine.routes.draw do

  root to: "products#index"
  
  resources :products do 
    # get 'product/index'
    # get 'product/create'
    # get 'product/show'
  end

  devise_for :masters, {
     class_name: 'Blorgh::Master',
     module: :devise
   }

  resources :posts do
	resources :comments
  end

end
