class BlackoutPoemsController < ApplicationController
  def new
  	@source = BlackoutPoem.prepare_text
  end
end
