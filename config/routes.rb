Rails.application.routes.draw do
  get "/questions", to: "questions#index"
  get "/answers", to: "answers#index"
  get "/signup", to:"users#new"
  get "/exam", to: "tests#new"
  get "/help", to: "static_pages#help"
  get "/getListTest", to: "tests#loadTypeTest"
  root "static_pages#home"
  resources :tests
  get :do_test, to: "tests#do_test"
  get "/getListTest", to: "tests#loadTypeTest"
  resources :users
end
