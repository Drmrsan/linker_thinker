Rails.application.routes.draw do
  devise_for :users, controllers: { omniauth_callbacks: "omniauth_callbacks"}

  root      "links#index"
  
  resources :links do
  	member do
  		put "like" , to: "links#upvote"
  		put "dislike" , to: "links#downvote"
  	end
  	resources :comments
  end
end
