Rails.application.routes.draw do

  namespace :api do
    namespace :v1  do
      resources :characters
    end
  end

  namespace :api do
    namespace :v1  do
      resources :stories
    end
  end

end
