class AlbumSerializer
  include RestPack::Serializer

  attributes :id, :title, :year, :href
  can_include :songs, :artists

  def href
    "#{RestPack::Serializer.href_prefix}/albums/#{id}.json"
  end
end
