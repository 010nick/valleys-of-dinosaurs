Rails.application.routes.draw do
  resources :dinosaurs
  root "dinosaurs#index"
end
