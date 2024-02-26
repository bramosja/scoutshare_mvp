class SiteTag < ApplicationRecord
  belongs_to :site
  belongs_to :tag
  validates_presence_of :site, :tag
end
