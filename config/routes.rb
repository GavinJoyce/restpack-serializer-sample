RestpackSerializerSample::Application.routes.draw do
  scope '/api/v1' do
    resources :artists
    resources :albums
    resources :songs
  end

  #Original sample API urls:
  resources :artists
  resources :albums
  resources :songs
end
