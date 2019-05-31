class StoresController < ApplicationController
    before_action :set_store, only: [:edit, :update]

    def index
        @stores = Store.order(:address)
    end

    def new
        @store = Store.new
    end

    def create
		@store = Store.new(store_params)

		respond_to do |format|
			if @store.save
				format.html {redirect_to @store, notice: 'Store location was successfully created.'}
			else
				format.html {render :new}
			end
		end
	end


    def show 
        set_store
    end

    def update
		respond_to do |format|
			if @store.update(store_params)
				format.html { redirect_to @store, notice: 'Store location was successfully updated.' }
			else
				format.html{ render :edit}
			end
		end
	end


    def edit
        set_store
    end

    private
    def set_store
        @store = Store.find(params[:id])
    end

    def store_params
        params.fetch(:store, {}).permit(:address, :street, :zip, :phone)
    end

end
