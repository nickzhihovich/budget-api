class Base < Grape::API
  format :json
  version 'v1', using: :path

  mount V1::Category

  add_swagger_documentation \
    mount_path: '/doc'
end
