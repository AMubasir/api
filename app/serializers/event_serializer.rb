class EventSerializer < ActiveModel::Serializer
  attributes :id, :name, :description
  belongs_to :location
  belongs_to :group_month
end
