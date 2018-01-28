class Api::LocationSerializer < ActiveModel::Serializer
  attributes :id, :city, :state, :country
end
