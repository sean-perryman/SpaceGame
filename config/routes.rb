Rails.application.routes.draw do
  resources :ships, :worlds, :planets, :items, :player_ships, :captains, :users, :planet_inventories

  get "/log-in" => "sessions#new"
  post "/log-in" => "sessions#create"
  get "/log-out" => "sessions#destroy", as: :log_out

  root 'home#index'
end
