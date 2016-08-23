Rails.application.routes.draw do
  get '/' => 'thesaurus#index'

  get '/entries' => 'entries#index'
  get '/entries/new' => 'entries#new'
  get '/entries/:id' => 'entries#show'
  post '/entries' => 'entries#create'
  get '/search' => 'entries#search'
  delete '/entries/:id' => 'entries#destroy'

end
