class MagnetPoemsController < ApplicationController
  def index
  	@magnet_poems = MagnetPoem.all
  end

  def new
  	@magnet_poem = MagnetPoem.new
  end

  def create
     magnet_poem = current_user.magnet_poems.build(magnet_poem_params)
     if magnet_poem.save
     	redirect_to magnet_poems_path
     else
     	flash[:notice] = "Something went wrong"
     end
  end

  def destroy
    poem = MagnetPoem.find(params[:id])
    poem.destroy
    redirect_to magnet_poems_path
  end

  private
  def magnet_poem_params
  	params.require(:magnet_poem).permit(:text, :title)
 	end
end
