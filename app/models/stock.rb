class Stock < ApplicationRecord
    has_one :product, class_name: "product", foreign_key: "product_id"
    belongs_to :inventory, class_name: "inventory", foreign_key: "inventory_id"
end
