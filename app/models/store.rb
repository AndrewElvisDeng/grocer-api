class Store < ApplicationRecord
    validates :address, :street, :zip, :phone, presence: true
    
end
