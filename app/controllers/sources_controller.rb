class SourcesController < ApplicationController
  def index
  	@sources = Source.all
  end

  def new
  	@source = Source.new
  end

  def create
  	source = Source.new(source_params)
  	if source.save
      redirect_to new_blackout_poem_path
    else
      redirect_to  new_source_path
    end
  end

  private
  def source_params
    params.require(:source).permit(:text)
  end

end
