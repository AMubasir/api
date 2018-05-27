class Location < ApplicationRecord

  has_many :culinaries
  has_many :crafts

  validates :address, presence: true

  geocoded_by :address
  after_validation :geocode, :if => :address_changed?
end
