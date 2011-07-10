JosephbauserNet::Application.routes.draw do
  get "vcard", :to => 'vcard#show'
  get "vcard/download", :to => 'vcard#download'
  get "resume", :to => 'resume#index'
  get "projects", :to => 'projects#index'
  get "info", :to => 'home#index'

  root :to => redirect('/info')
end
