class ProductsController < ApplicationController
  def index
    render json: Product.all
  end

  def show
    render json: Product.find(params[:id])
  end

  def create
    product = Product.create(product_params)
    # movie points to an object if create was successfully, else movie points to false
    if product.save
      render json: product, status: :created
    else
      render json: product.errors, status: :unprocessable_entity
    end
  end

  def update
    product = Product.find(params[:id])
    if product.update_attributes(product_params)
      render json: product, status: :updated
    else
      render json: product.errors, status: :unprocessable_entity
    end
  end

  def destroy
    Product.find(params[:id]).destroy
    head :ok
  end

private
  def product_params
    params.require(:product).permit(
      :title,
      :img_url,
      :rating,
      :category,
      :description,
      :price
      )
  end
end
