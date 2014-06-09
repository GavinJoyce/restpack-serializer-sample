class ArtistSerializer
  include RestPack::Serializer

  attributes :id, :name, :website, :href
  can_include :albums, :songs
  can_sort_by :id, :name
end
