class Site < ApplicationRecord
  belongs_to :location
  has_many :site_tags, dependent: :destroy
  has_many :tags, through: :site_tags

  scope :filter_by_location, -> (location_id) { where(location_id: location_id) }
  scope :filter_by_tags, -> (tag_ids) { where(tag_ids: tag_ids) }
  # filter by tag
  # filter by shoot type

  validates :name, presence: true
end
