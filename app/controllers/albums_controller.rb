class AlbumsController < ApplicationController
  def index
    render json: AlbumSerializer.page(params)
  end

  def show
    render json: AlbumSerializer.resource(params)
  end
end
