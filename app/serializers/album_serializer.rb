class AlbumSerializer
  include RestPack::Serializer

  attributes :id, :title, :year, :href
  can_include :songs, :artists
  can_sort_by :id, :title
end
