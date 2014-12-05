Blorgh::Engine.routes.draw do
  root to: "posts#index"
  
  devise_for :masters, {
     class_name: 'Blorgh::Master',
     module: :devise
   }
   devise_scope :master do
	 get "signin",   :to => "masters/sessions#new",      :as => :signin
	 get "signout",  :to => "masters/sessions#destroy",  :as => :signout
	 get "signup",   :to => "masters/registrations#new", :as => :signup
	 put "edit",     :to => "masters/registrations#edit", :as => :edit
   end

  resources :posts do
	resources :comments
  end

end
