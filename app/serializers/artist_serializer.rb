class ArtistSerializer
  include RestPack::Serializer

  attributes :id, :name, :website, :href
  can_include :albums, :songs, :fans
end
