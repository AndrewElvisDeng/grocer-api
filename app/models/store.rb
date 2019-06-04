class Store < ApplicationRecord
    validates :address, :street, :zip, :phone, presence: true
    has_many :stocks
    
    def street=(s)
        write_attribute(:street, s.to_s.titleize)
    end
end
