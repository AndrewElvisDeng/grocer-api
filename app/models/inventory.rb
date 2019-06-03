class Inventory < ApplicationRecord
    has_many :stocks, class_name: "stock", foreign_key: "reference_id"
    belongs_to :store, class_name: "store", foreign_key: "store_id", optional: false
end
