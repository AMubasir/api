class Category < ApplicationRecord

has_many :culinaries
  # validates :culinary, presence: true
  # validates :language, presence: true

end
