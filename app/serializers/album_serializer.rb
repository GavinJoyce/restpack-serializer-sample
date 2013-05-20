class AlbumSerializer
  include RestPack::Serializer

  attributes :id, :title, :year, :href
  can_include :songs, :artists
end
