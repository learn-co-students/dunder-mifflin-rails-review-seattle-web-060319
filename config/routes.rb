Rails.application.routes.draw do
  resources :dogs, except: [:create]
  resources :employees
  get "/dogs", to: "dogs#sort_by"
  post "/dogs", to: "dogs#sorted_results"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
