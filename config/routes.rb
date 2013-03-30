Pikt::Application.routes.draw do
  get "sign_in" => "sessions#create", :as => "sign_in"
  delete "sign_out" => "sessions#destroy", :as => "sign_out"

  root :to => "start#index"
end
