class SongSerializer
  include RestPack::Serializer

  attributes :id, :title, :href
  can_include :artists, :albums
end
