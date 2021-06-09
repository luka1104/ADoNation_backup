Rails.application.routes.draw do
  get 'donate/index'
  get 'ai_d/index'
  get 'users/index'
  get 'project/index'
  get 'projects/index'
  get "/" => "home#index"
  
  get "/first" => "home#first"
  
  get "/aboutus" => "home#aboutus"
  
  get "/choose_ad" => "home#choose_ad"

  get "/ad" => "home#ad_anonymous"
  
  get "/contact" => "home#contact"
  
  get "/donate/raise_donate" => "donate#index"

  get "/donate/raise_donate_admin" => "donate#index_admin"
  
  get "/recruitment" => "home#recruitment"
  
  get "/signup" => "users#new"
  
  get "/projects" => "home#projects"

  get "/users" => "users#index"

  get "/projects/new" => "home#newprojects"

  get "/projects/:id" => "home#show"

  post "/projects/create" => "home#create"

  post "/donate/create" => "donate#create"

  get "/donate/new" => "donate#new"

  get "/donate/:id" => "donate#preview"

  get "/projects/:id/edit" => "home#edit"

  get "/community" => "community#index"

  get "/community/new" => "community#new"

  get "/community/:id" => "community#show"

  post "/community/create" => "community#create"

  get "/community/:id/edit" => "community#edit"

  post "community/:id/update" => "community#update"

  post "community/:id/destroy" => "community#destroy"

  post "projects/:id/update" => "home#update"

  post "projects/:id/destroy" => "home#destroy"

  get "/community/users/:id" => "users#show"

  get "/users/:id" => "users#show2"

  get "/aid/users/:id" => "users#show3"

  post "/users/create" => "users#create"

  get "/users/:id/edit" => "users#edit"

  post "/users/:id/update" => "users#update"

  get "login" => "users#login_form"

  get "users/:id/likes" => "users#likes"

  get "/clickdonate" => "home#clickdonate"

  get "/clickdonate_ano" => "home#clickdonate-ano"

  get "/aid" => "ai_d#index"
  
  post "login" => "users#login"

  post "logout" => "users#logout"

  post "/users/:id/destroy" => "users#destroy"

  post "likes/:post_id/create" => "likes#create"

  post "likes/:post_id/destroy" => "likes#destroy"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
