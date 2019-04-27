Rails.application.routes.draw do
  get "/questions", to: "questions#index"
  get "/answers", to: "answers#index"
  get "/signup", to:"users#new"
  get "/exam", to: "tests#new"
  get "/help", to: "static_pages#help"
  get "/getListTest", to: "tests#loadTypeTest"
  get "/login", to: "sessions#new"
  post "/login", to: "sessions#create"
  delete "/logout", to: "sessions#destroy"
  root "static_pages#home"
  resources :tests
  get :do_test, to: "tests#do_test"
  get "/getListTest", to: "tests#loadTypeTest"
  resources :users
  resources :account_activations, only: %i(edit)
  resources :password_resets, only: %i(new create edit update)
end
