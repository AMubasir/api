class CulinarySerializer < ActiveModel::Serializer
  belongs_to :category
  belongs_to :location
  attributes :name, :description
end
