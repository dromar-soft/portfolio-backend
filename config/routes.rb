Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root "home#index"

  get "/login" => "users#login_form"
  get "/signup" => "users#new"

  get "/posts/index" => "posts#index"
end
