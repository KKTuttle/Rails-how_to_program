Rails.application.routes.draw do
  resources :sections do
    resources :lessons
    # one to many
  end
end
