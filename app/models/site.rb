class Site < ApplicationRecord
  belongs_to :location

  scope :filter_by_location, -> (location_id) { where(location_id: location_id) }

  validates :name, presence: true
end
