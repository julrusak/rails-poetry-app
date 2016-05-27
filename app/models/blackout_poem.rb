class BlackoutPoem < ActiveRecord::Base
  belongs_to :user
  belongs_to :blackout_poem	
end