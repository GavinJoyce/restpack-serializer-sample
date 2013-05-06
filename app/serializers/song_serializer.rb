class SongSerializer
  include RestPack::Serializer

  attributes :id, :title, :album_id, :artist_id, :href
  can_include :artists, :albums

  def href
    "/songs/#{id}.json"
  end
end