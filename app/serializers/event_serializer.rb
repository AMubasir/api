class EventSerializer < ActiveModel::Serializer
  attributes :id, :date, :name, :description, :address, :latitude, :longitude
  # belongs_to :location
  belongs_to :group_month
end