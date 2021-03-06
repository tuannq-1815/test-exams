Rails.application.routes.draw do
  get "/questions", to: "questions#index"
  get "/answers", to: "answers#index"
  get "/signup", to:"users#new"
  get "/exam", to: "tests#new"
  get "/help", to: "static_pages#help"
  get "/getListTest", to: "scores#loadTypeTest"
  get "/admin", to: "admin/base#home"
  get "/login", to: "sessions#new"
  post "/login", to: "sessions#create"
  delete "/logout", to: "sessions#destroy"
  root "static_pages#home"
  resources :tests
  resources :scores
  get :do_test, to: "tests#do_test"
  get "/getListTest", to: "tests#loadTypeTest"
  resources :users
  resources :account_activations, only: %i(edit)
  resources :password_resets, only: %i(new create edit update)
  namespace :admin do
    resources :subjects
    resources :tests
    resources :users
    resources :questions
  end
end
