Rails.application.routes.draw do
  post "/users" => "users#create"

  post "/sessions" => "sessions#create"

  get "/exercises" => "exercises#index"
  get "/exercises" => "exercises#show"
  post "/exercises" => "exercises#create"
end
