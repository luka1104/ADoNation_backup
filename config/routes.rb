Rails.application.routes.draw do
  get 'project/index'
  get 'projects/index'
  get "/" => "home#index"
  
  get "/first" => "home#first"
  
  get "/aboutus" => "home#aboutus"
  
  get "/choose_ad" => "home#choose_ad"
  
  get "/contact" => "home#contact"
  
  get "/login" => "home#login"
  
  get "/newproject" => "home#newproject"
  
  get "/recruitment" => "home#recruitment"
  
  get "/signup" => "home#signup"
  
  get "/projects" => "home#projects"

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
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
