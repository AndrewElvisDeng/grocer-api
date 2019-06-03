class Store < ApplicationRecord
    validates :address, :street, :zip, :phone, presence: true
    has_one :inventory, class_name: "inventory", foreign_key: "inventory_id"
    
    # before_create :create_inventory
    
    # private
    # def create_inventory
    #     inventories.build(:store => @store)
    # end
end
