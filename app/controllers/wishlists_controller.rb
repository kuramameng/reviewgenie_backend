class WishlistsController < ApplicationController
  def index
    render json: Wishlist.all
  end

  def show
    render json: Wishlist.find(params[:id])
  end

  def create
    wishlist = Wishlist.create(wishlist_params)
    # movie points to an object if create was successfully, else movie points to false
    if wishlist.save
      render json: wishlist, status: :created
    else
      render json: wishlist.errors, status: :unprocessable_entity
    end
  end

  def update
    wishlist = Wishlist.find(params[:id])
    if wishlist.update_attributes(wishlist_params)
      render json: wishlist, status: :updated
    else
      render json: wishlist.errors, status: :unprocessable_entity
    end
  end

  def destroy
    Wishlist.find(params[:id]).destroy
    head :ok
  end

private
  def wishlist_params
    params.require(:wishlist).permit(
      :user_id,
      :product_id,
      :title,
      :comment
      )
  end
end
