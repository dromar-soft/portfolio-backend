Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root "home#index"

  get "/login"          => "users#login_form"
  post "/logout"        => "users#logout"
  get "/signup"         => "users#new"
  post "/users/create"  => "users#create"
  post "/users/login"   => "users#login"

  get "/posts/index"    => "posts#index"

  get "/tests/alert"    => "tests#alert"
end
