class BlackoutPoemsController < ApplicationController
  def new
  	@source = Source.limit(1).order("RANDOM()").first
  end
end
