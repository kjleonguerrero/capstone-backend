Rails.application.routes.draw do
  post "/users" => "users#create"
  get "/users" => "users#index"

  post "/sessions" => "sessions#create"

  get "/exercises" => "exercises#index"
  get "/exercises/:id" => "exercises#show"
  post "/exercises" => "exercises#create"
  patch "/exercises/:id" => "exercises#update"
  delete "/exercises/:id" => "exercises#destroy"

  get "/routines" => "routines#index"
  post "/routines" => "routines#create"
  delete "/routines/:id" => "routines#destroy"
end
