class SongSerializer
  include RestPack::Serializer

  attributes :id, :title, :href
  can_include :artists, :albums

  def href
    "#{RestPack::Serializer.href_prefix}/songs/#{id}.json"
  end
end
