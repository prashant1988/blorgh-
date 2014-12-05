Blorgh::Engine.routes.draw do
  root to: "posts#index"
  
  devise_for :masters, {
     class_name: 'Blorgh::Master',
     module: :devise
   }

  resources :posts do
	resources :comments
  end

end
