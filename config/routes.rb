Pikt::Application.routes.draw do
  get "sessions/create"

  root :to => "start#index"
end
