class AlbumSerializer
  include RestPack::Serializer

  attributes :id, :title, :year, :artist_id, :url

  def url
    "/albums/#{id}.json"
  end
end