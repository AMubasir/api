class Culinary < ApplicationRecord
  
  validates :name, presence: true
  validates :description, presence: true

  belongs_to :category
  
  geocoded_by :address
  after_validation :geocode, if: ->(obj){ obj.address.present? and obj.address_changed? }
  # belongs_to :location
end
