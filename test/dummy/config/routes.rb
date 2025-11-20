Rails.application.routes.draw do
  mount Inheritance::Engine => "/"
  root to: "dashboard#index"
end
