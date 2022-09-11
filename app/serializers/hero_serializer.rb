class HeroSerializer
  include JSONAPI::Serializer
  attributes :id, :image, :created_at, :updated_at, :image_url
end
