Rails.application.routes.draw do
  get 'animals' => 'animal#index'
  get 'animals/:id' => 'animal#show'
  post 'animals' => 'animal#create'
  patch 'animals/:id', to: 'animal#update'
  delete 'animals/:id(.:format)' => 'animal#destroy'
end
