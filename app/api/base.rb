require 'doorkeeper/grape/helpers'

class Base < Grape::API
  helpers Doorkeeper::Grape::Helpers

  format :json
  version 'v1', using: :path

  mount V1::Category

  helpers do
    def current_user
      User.find(doorkeeper_token.resource_owner_id) if doorkeeper_token
    end
  end

  add_swagger_documentation \
    mount_path: '/doc'
end