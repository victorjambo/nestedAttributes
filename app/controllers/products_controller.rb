class ProductsController < ApplicationController
  def index
		@products = Product.all
  end

  def new
		@product = Product.new
		2.times{@product.pics.build}
  end

	def create
		@product = Product.new(product_params)
		if @product.save
			redirect_to root_url
		else
			render :new
		end
	end

	private
	def product_params
		params.require(:product).permit(:name, pics_attributes: [:id, :url])
	end
end
