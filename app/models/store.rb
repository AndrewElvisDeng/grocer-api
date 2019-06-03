class Store < ApplicationRecord
    validates :address, :street, :zip, :phone, presence: true
    has_many :stocks, class_name: "stock", foreign_key: "reference_id"
    
    # before_create :create_inventory
    
    # private
    # def create_inventory
    #     inventories.build(:store => @store)
    # end
end
