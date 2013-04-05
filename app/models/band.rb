class Band < ActiveRecord::Base
  attr_accessible :city, :name, :state, :artist_ids

  validates :name, :presence => true

  has_many :artists_bands
  has_many :artists, :through => :artists_bands
  has_many :recordings
end
