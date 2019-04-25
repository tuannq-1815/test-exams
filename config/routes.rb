Rails.application.routes.draw do
  get "/questions", to: "questions#index"
  get "/answers", to: "answers#index"
  get "/help", to: "static_pages#help"
  root "static_pages#home"
  resources :tests
  get :do_test, to: "tests#do_test"
  get "/getListTest", to: "tests#loadTypeTest"
end
