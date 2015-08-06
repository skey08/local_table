class FavoriteGoodsController < ApplicationController
  before_action :set_good

  def index
    # @favorites = current_user.favorites
  end

  def create
     if Favorite.create(favorited: @good, user: current_user)
       redirect_to @good, notice: 'This piece of furniture has been favorited'
     else
       redirect_to @good, alert: 'Something went wrong..try again'
     end
   end

   def destroy
     Favorite.where(favorited_id: @good.id, user_id: current_user.id).first.destroy
     redirect_to @good, notice: 'This piece is no longer in your favorites'
   end

private
  def set_good
    @good = Good.find(params[:id])
  end

end
