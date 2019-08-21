# frozen_string_literal: true

class ProductsController < ApplicationController
  before_action :set_product, only: %i[show update destroy]

  # GET /products
  def index
    @products = Product.all

    @products = Product.all.with_attached_image
    render json: @products.map { |product|
      product.image.attachment ? product.as_json.merge({ image: url_for(product.image) }) : product.as_json.merge({ image: '' })
    }
  end

  # GET /products/1
  def show
    render json: @product
  end

  # POST /products
  def create
    @product = Product.new(product_params)

    @product.image.attach(params.dig(:product, :image))
    if @product.save
      render json: @product, status: :created, location: @product
    else
      render json: @product.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /products/1
  def update
    if @product.update(product_params)
      render json: @product
    else
      render json: @product.errors, status: :unprocessable_entity
    end
  end

  # DELETE /products/1
  def destroy
    @product.destroy
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_product
    @product = Product.find(params[:id])
  end

  # Only allow a trusted parameter "white list" through.
  def product_params
    params.require(:product).permit(:name, :description, :store_id)
  end
end
