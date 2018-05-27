class LocationSerializer < ActiveModel::Serializer
  attributes :address, :latitude, :longitude
end
