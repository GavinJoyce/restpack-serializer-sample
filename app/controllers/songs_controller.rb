class SongsController < ApplicationController
  def index
    render json: SongSerializer.page(params)
  end
end
