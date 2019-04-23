Rails.application.routes.draw do
  get "/exam", to: "tests#new"
  get "/help", to: "static_pages#help"
  root "static_pages#home"
  resources :tests
  get "/getListTest", to: "tests#loadTypeTest"
end
