class ArtistSerializer
  include RestPack::Serializer

  attributes :id, :name, :website, :href
  can_include :albums, :songs

  def href
    "#{RestPack::Serializer.href_prefix}/artists/#{id}.json"
  end
end
