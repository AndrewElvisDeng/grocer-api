class InventoriesController < ApplicationController
    before_action :set_inventory, only: [:edit, :update]

    def index
        @inventories = Inventory.order(:name)
    end

    def new
        @inventory = Inventory.new
    end

    def create
		@inventory = Inventory.new(inventory_params)

		respond_to do |format|
			if @inventory.save
				format.html {redirect_to @inventory, notice: 'Inventory was successfully created.'}
			else
				format.html {render :new}
			end
		end
	end


    def show 
        set_inventory
    end

    def update
		respond_to do |format|
			if @inventory.update(inventory_params)
				format.html { redirect_to @inventory, notice: 'Inventory was successfully updated.' }
			else
				format.html{ render :edit}
			end
		end
	end

    def edit
        set_inventory
    end

    private
    def set_inventory
        @inventory = Inventory.find(params[:id])
    end

    def inventory_params
        params.fetch(:inventory, {}).permit(:store)
    end
end
