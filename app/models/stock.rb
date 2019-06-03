class Stock < ApplicationRecord
    belongs_to :product, foreign_key: "product_id"
    belongs_to :store, foreign_key: "store_id"

end
