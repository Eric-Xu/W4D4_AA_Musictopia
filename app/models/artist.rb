class Artist < ActiveRecord::Base
  attr_accessible :name, :band_ids

  has_many :singles
  has_many :artists_bands
  has_many :bands, :through => :artists_bands

  validates :name,
      :presence => true,
      :format => { :with => /^[a-zA-Z\s]*$/ }
end
