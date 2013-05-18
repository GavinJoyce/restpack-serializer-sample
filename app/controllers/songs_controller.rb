class SongsController < ApplicationController
  def index
    render json: SongSerializer.page(params)
  end

  def show
    render json: SongSerializer.resource(params)
  end
end
