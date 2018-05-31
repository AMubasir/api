class CraftSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :address, :latitude, :longitude
  # belongs_to :location
end