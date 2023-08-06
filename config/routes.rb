Rails.application.routes.draw do
  # resources :birds, only: [:index, :show, :create, :update, :destroy]
  #we commented because now we are using the all five RESTful routes so we can simply do
  resources :birds
  patch "/birds/:id/like", to: "birds#increment_likes"
end
