Rails.application.routes.draw do
  resources :chapters 

  resources :sections do
    resources :lessons
    # one to many
  end
end
