Rails.application.routes.draw do
  resources :posts
  resources :post_images
  resources :avatar_images
  resources :avatars
  resources :hero_images
  resources :heros
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get 'latest', to: "heros#latest"
  get 'latest2', to: "avatars#latest"
  get 'latest3', to: "posts#latest"

end
