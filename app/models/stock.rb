class Stock < ApplicationRecord
    belongs_to :product, class_name: "product", foreign_key: "product_id"
    belongs_to :store, class_name: "store", foreign_key: "store_id"
end
