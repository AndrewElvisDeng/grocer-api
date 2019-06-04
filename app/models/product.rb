class Product < ApplicationRecord
    validates :name, presence: true
    validates :price, presence: true

    def name=(s)
        write_attribute(:name, s.to_s.titleize)
    end
end
