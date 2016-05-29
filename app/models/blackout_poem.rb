class BlackoutPoem < ActiveRecord::Base
  belongs_to :user
  belongs_to :blackout_poem	

  def self.prepare_text
  	source = Source.limit(1).order("RANDOM()").first
  	return source.text.split(' ')
  end
end