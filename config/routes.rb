JosephbauserNet::Application.routes.draw do
  get "resume", :to => 'resume#index'
  get "projects", :to => 'projects#index'
  get "info", :to => 'home#index'

  root :to => 'home#index'
end
