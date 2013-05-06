class ArtistsController < ApplicationController
  def index
    render json: ArtistSerializer.page(params)
  end
end
