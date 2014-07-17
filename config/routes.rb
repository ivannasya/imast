Imaster::Application.routes.draw do
  devise_for :masters, :controllers => { :registrations => "registrations" }
  get "feedbacks/new"
  get "orders/index"
  resources :masters, only: [:index, :show]
  get "orders/new"
  get "orders/create"
  get "orders/show"

  root "main#index"

end
