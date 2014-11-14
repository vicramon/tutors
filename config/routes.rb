Rails.application.routes.draw do

  root to: 'tutors#index'

  namespace :api do
    resources :tutors, only: :index
    resources :subjects, only: :index
  end

end
