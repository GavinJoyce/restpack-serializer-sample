class SongSerializer
  include RestPack::Serializer

  attributes :id, :title, :href
  can_include :artists, :albums

  def href
    "/songs/#{id}.json"
  end
end
