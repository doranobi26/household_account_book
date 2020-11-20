Rails.application.routes.draw do
  root 'tops#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :incomes
  resources :fixedcosts
  resources :variablecosts
  resources :income_values
  post "income_values/new(/:name)" => "income_values#new"
end
