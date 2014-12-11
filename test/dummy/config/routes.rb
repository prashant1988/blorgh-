Rails.application.routes.draw do
  
  mount Blorgh::Engine => "/blorgh"

  root to: "blorgh/products#index"
end
