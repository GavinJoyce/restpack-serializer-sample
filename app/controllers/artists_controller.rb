class ArtistsController < ApplicationController
  def index
    render json: ArtistSerializer.page(params)
  end

  def show
    render json: ArtistSerializer.resource(params)
  end
end
