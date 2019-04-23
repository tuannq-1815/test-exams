Rails.application.routes.draw do
  get "/exam", to: "tests#new"
  get "/help", to: "static_pages#help"
  get "/getListTest", to: "tests#loadTypeTest"
  root "static_pages#home"
  resources :tests
end
