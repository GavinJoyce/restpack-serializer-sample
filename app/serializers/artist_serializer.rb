class ArtistSerializer
  include RestPack::Serializer

  attributes :id, :name, :website, :url

  def url
    "/artists/#{id}.json"
  end
end