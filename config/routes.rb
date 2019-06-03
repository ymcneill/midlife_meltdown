Rails.application.routes.draw do
  devise_for :users
  resources :comments
  resources :posts
  
  get "index" => "posts#index"
  
  post "index" => "posts#index"
  
  root "posts#home_land"
  
  # Our URL is now the :name variable (to be passed through the link), 
  # and showing up on the far right is our alias,
  # this will let us continue using user_posts_path in our links
  get 'user_posts' => 'posts#user_posts'
  get 'home_land' => "posts#home_land"
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
