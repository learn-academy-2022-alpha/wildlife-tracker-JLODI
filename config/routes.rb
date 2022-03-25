Rails.application.routes.draw do
  get 'animals' => 'animal#index'
  get 'animals/:id' => 'animal#show'
  post 'animals' => 'animal#create'
  patch 'animals/:id', to: 'animal#update'
  delete 'animals/:id' => 'animal#destroy'
  post 'sightings' => 'sighting#create'
  get 'sightings' => 'sighting#index'
  get 'sightings/:id' => 'sighting#show'
  patch 'sightings/:id', to: 'sighting#update'
  delete 'sightings/:id' => 'sighting#destroy'
  get 'animals/:id/sightings' => 'animal#show_animal_sightings'
  root 'animal#index'
end
