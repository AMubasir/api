class CraftSerializer < ActiveModel::Serializer
  attributes :name, :description
  belongs_to :location
end
