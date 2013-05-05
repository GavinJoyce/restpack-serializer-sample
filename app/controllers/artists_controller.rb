class ArtistsController < ApplicationController
  def index
    p "PARAMS: #{params}"
    render json: ArtistSerializer.page(params)
  end
end
