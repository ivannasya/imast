Imaster::Application.routes.draw do
  root "main#index"

  namespace :admin do
    resources :categories
  end

  devise_for :masters, :controllers => { :registrations => "registrations" }
  resources :masters, only: [:index, :show, :edit] do
    collection do
      patch 'update_password'
    end
  end
  resources :orders

  get "feedbacks/new"

end
