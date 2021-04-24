Rails.application.routes.draw do
  resources :sites do
    resources :reports
    resources :custom_definitions
    resources :custom_definition_values
  end

  resources :report_types

  root 'sites#index'
end
