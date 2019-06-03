class StocksController < ApplicationController

    def index
        @stocks = Stock.order(:store_id)
    end

    def new
        @stock = Stock.new
    end

    def create
		@stock = Stock.new(stock_params)

		respond_to do |format|
            if @stock.save
                puts "\n\n\n this ran \n\n\n"
				format.html {redirect_to @stock, notice: 'Stock location was successfully created.'}
			else
				format.html {render :new}
			end
		end
	end


    def show
        @stocks = Stock.all
        set_stock
    end

    def update
		respond_to do |format|
            if @stock.update(stock_params)
				format.html { redirect_to @stock, notice: 'Stock location was successfully updated.' }
			else
				format.html{ render :edit}
			end
		end
	end


    def edit
        set_stock
    end

    private
    def set_stock
        @stock = Stock.find(params[:id])
    end

    def stock_params
        params.fetch(:stock, {}).permit(:store_id, :product_id, :quantity)
    end

end


