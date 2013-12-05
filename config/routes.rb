RestpackSerializerSample::Application.routes.draw do
  root :to => 'home#index'
  scope '/api/v1' do
    resources :artists
    resources :albums
    resources :songs
  end
end
