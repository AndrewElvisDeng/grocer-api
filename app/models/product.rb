class Product < ApplicationRecord
    belongs_to :stock, class_name: "stock", foreign_key: "stock_id"
    validates :name, presence: true
    validates :price, presence: true
end
