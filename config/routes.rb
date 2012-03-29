Kbase::Application.routes.draw do
  resources :kbs

  root :to => 'kbs#index'
end
