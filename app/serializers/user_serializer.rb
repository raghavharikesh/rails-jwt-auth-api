class UserSerializer
  include JSONAPI::Serializer

  attributes :id,
             :name,
             :email,
             :created_at,
             :updated_at

  # You can add more attributes later
  # attribute :full_name do |object|
  #   object.name
  # end
end