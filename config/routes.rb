Rails.application.routes.draw do
  get 'users/index'
  get 'project/index'
  get 'projects/index'
  get "/" => "home#index"
  
  get "/first" => "home#first"
  
  get "/aboutus" => "home#aboutus"
  
  get "/choose_ad" => "home#choose_ad"

  get "/ad" => "home#ad_anonymous"
  
  get "/contact" => "home#contact"
  
  get "/newproject" => "home#newproject"
  
  get "/recruitment" => "home#recruitment"
  
  get "/signup" => "users#new"
  
  get "/projects" => "home#projects"

  get "/users" => "users#index"

  get "/projects/new" => "home#newprojects"

  get "/projects/:id" => "home#show"

  post "/projects/create" => "home#create"

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

  get "/users/:id" => "users#show"

  post "/users/create" => "users#create"

  get "/users/:id/edit" => "users#edit"

  post "/users/:id/update" => "users#update"

  get "login" => "users#login_form"
  
  post "login" => "users#login"

  post "logout" => "users#logout"

  post "/users/:id/destroy" => "users#destroy"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
