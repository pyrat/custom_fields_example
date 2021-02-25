Rails.application.routes.draw do
  resources :custom_definition_values
  resources :custom_definitions
  resources :reports
  resources :sites
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
