class UsersController < ApplicationController
def show
	@user = User.find(params[:id])
	@blackout_poems = @user.blackout_poems.order('created_at DESC')
	@magnet_poems = @user.magnet_poems.order('created_at DESC')
	@poems = @user.poems.order('created_at DESC')
end


end
