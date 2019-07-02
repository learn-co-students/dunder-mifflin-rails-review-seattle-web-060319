Rails.application.routes.draw do
  resources :dogs
  resources :employees
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'dogs/:id', to: 'dogs#show', as: 'dogShow'
  get 'employees/:id', to: 'employees#show', as: 'employeeShow'

end
