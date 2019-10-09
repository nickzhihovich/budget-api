module V1
  module Entities
    class Budget < Grape::Entity
      expose :name
      expose :user_id
      expose :created_at
      expose :updated_at
    end
  end
end
