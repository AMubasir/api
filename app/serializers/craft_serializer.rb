class CraftSerializer < ActiveModel::Serializer
  attributes :id, :name, :description
  belongs_to :location
end