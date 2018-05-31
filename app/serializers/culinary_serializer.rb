class CulinarySerializer < ActiveModel::Serializer
  belongs_to :category
  # belongs_to :location
  attributes :id, :name, :description, :address, :latitude, :longitude
end
