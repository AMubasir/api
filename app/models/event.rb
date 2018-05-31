class Event < ApplicationRecord
  # belongs_to :location
  belongs_to :group_month

  geocoded_by :address
  after_validation :geocode, if: -> (obj) { obj.address.present? and obj.address_changed? }
end
