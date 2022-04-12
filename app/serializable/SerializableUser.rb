class SerializableUser < JSONAPI::Serializable::Resource
  type 'users'

  attributes :email, :username, :timezone, :timezone_number

  link :self do
    @url_helpers.api_user_url(@object.id)
  end
end