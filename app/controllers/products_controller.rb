class ProductsController < ApplicationController
    before_action :set_product, only: [:edit, :update]

    def index
        @products = Product.order(:name)
    end

    def new
        @product = Product.new
    end

    def create
		@product = Product.new(product_params)

		respond_to do |format|
			if @product.save
				format.html {redirect_to @product, notice: 'Product was successfully created.'}
			else
				format.html {render :new}
			end
		end
	end


    def show 
        set_product
    end

    def update
		respond_to do |format|
			if @product.update(product_params)
				format.html { redirect_to @product, notice: 'Product was successfully updated.' }
			else
				format.html{ render :edit}
			end
		end
	end

    def edit
        set_product
    end

    private
    def set_product
        @product = Product.find(params[:id])
    end

    def product_params
        params.fetch(:product, {}).permit(:name, :price)
    end

end
