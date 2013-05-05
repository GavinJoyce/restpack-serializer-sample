class SongSerializer
  include RestPack::Serializer

  attributes :id, :title, :album_id, :artist_id, :url

  def url
    "/songs/#{id}.json"
  end
end