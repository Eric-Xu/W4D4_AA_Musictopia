class Single < ActiveRecord::Base
  attr_accessible :artist_id, :release_date, :title

  has_many :recordings
  has_many :recording_bands, :through => :recordings, :source => :bands
  belongs_to :artist

  validates :title, :uniqueness => { :scope => :artist_id,
                      :message => "only one track with same name per artist" }
end
