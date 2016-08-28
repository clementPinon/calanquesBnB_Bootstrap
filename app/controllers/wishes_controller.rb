class WishesController < ApplicationController

  def create
    wish = Wish.new
    #user + flat
    wish.user = current_user
    #binding.pry
    wish.flat = Flat.find(params[:flat_id])
    #binding.pry
    wish.save
    redirect_to flats_path, notice: "flat added to your wishlist"
  end

  def destroy
    @wish = Wish.find(params[:id])
    @wish.destroy
    redirect_to flats_path, notice: "flat removed from your wishlist"
  end

  #then we need to go to flat index to modify the avatar.
end

