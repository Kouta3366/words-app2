Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'home#about'
  get "signup" => "users#new"
  get "login" => "users#login_form"
  get 'home/about'
  post "users/create" => "users#create"
  get 'home/top'
  get "logout" => "users#logout"
  post "login" => "users#login"
  post "lists/:id/start" => "lists#start"
  get "lists/new" => "lists#new"
  post "lists/create" => "lists#create"
  get "lists/:id/show" => "lists#show"
  get "lists/:id/start" => "lists#start"
  get "lists/:id/edit" => "lists#edit"
  post "card/:id/create" => "lists#new_card"
  get "lists/:id/edit2" => "lists#edit2"
  post "card/:id/update" => "lists#update"
  post "card/:id/destroy" => "lists#destroy"
  get "lists/:id1/card1/:id2" => "lists#card1"
  get "lists/:id1/card2/:id2" => "lists#card2"
  get "lists/:id1/card3/:id2" => "lists#card3"
  get "lists/:id1/card4/:id2" => "lists#card4"
  get "lists/:id1/card5/:id2" => "lists#card5"
  get "lists/:id1/card6/:id2" => "lists#card6"
  get "lists/end" => "lists#end"
  post "lists/:id/destroy" => "lists#list_destroy"
end
