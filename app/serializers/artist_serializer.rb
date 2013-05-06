class ArtistSerializer
  include RestPack::Serializer

  attributes :id, :name, :website, :href
  can_include :albums, :songs

  def href
    "/artists/#{id}.json"
  end
end