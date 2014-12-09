Rails.application.routes.draw do
  root to: "blorgh/posts#index"
  mount Blorgh::Engine => "/blorgh"
end
