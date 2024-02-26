class Tag < ApplicationRecord
  has_many :site_tags, dependent: :destroy
  has_many :sites, through: :site_tags
end
