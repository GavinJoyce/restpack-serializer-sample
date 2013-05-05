RestpackSerializerSample::Application.routes.draw do
 resources :artists
 resources :albums
 resources :songs

 root :to => redirect("/artists.json")
end
