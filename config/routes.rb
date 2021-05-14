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

  post "/projects/create" => "home#create"

  get "/projects/:id" => "home#show"

  get "/projects/:id/edit" => "home#edit"

  post "projects/:id/update" => "home#update"

  post "projects/:id/destroy" => "home#destroy"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
