Dir[Rails.root + 'app/serializers/**/*.rb'].each do |path|
  require path
end
