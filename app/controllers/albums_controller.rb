class AlbumsController < ApplicationController
  def index
    render json: AlbumSerializer.page(params)
  end
end
