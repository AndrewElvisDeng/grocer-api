class Store < ApplicationRecord
    validates :address, presence: true
end
