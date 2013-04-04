class Recording < ActiveRecord::Base
  attr_accessible :band_id, :release_date, :single_id

  belongs_to :band
  belongs_to :single
end
