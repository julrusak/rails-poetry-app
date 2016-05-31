class BlackoutPoemsController < ApplicationController
  def index
  	@blackout_poems = BlackoutPoem.all
  end

  def new
  	@blackout_poem = BlackoutPoem.new
  	@source = BlackoutPoem.prepare_text
  end

  def create
     source = Source.find(params[:blackout_poem][:source_id])
     blackout_poem = source.blackout_poems.build(blackout_poem_params)
     blackout_poem.user_id = current_user.id
     if blackout_poem.save
     	redirect_to blackout_poems_path
     else
     	flash[:notice] = "Something went wrong"
     end
  end

  def destroy
  	poem = BlackoutPoem.find(params[:id])
  	poem.destroy
  	redirect_to blackout_poems_path
  end

  private
  def blackout_poem_params
  	params.require(:blackout_poem).permit(:text, :title)
 	end

end
