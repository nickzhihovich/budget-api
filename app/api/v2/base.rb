module V2
  class Base < Grape::API
    format :json
    get do
      'Hello world.'
    end
  end
end
