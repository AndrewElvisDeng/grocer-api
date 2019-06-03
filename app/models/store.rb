class Store < ApplicationRecord
    validates :address, :street, :zip, :phone, presence: true
    has_many :stocks
    
    # before_create :create_inventory
    
    # private
    # def create_inventory
    #     inventories.build(:store => @store)
    # end
end
