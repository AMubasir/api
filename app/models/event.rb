class Event < ApplicationRecord
  belongs_to :location
  belongs_to :group_month
end
