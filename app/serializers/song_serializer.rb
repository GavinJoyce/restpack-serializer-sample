class SongSerializer
  include RestPack::Serializer

  attributes :id, :title, :href
  can_include :artists, :albums
  can_sort_by :id, :title
end
