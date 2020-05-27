Rails.application.routes.draw do
  devise_for :users, :controllers => { registrations: "registrations" }
  resources :recofriendations
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  # namespace :api do
  #   get "/photos" => "photos#index"
  # end
  root "recofriendations#index"
end
