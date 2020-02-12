class Customer < ApplicationRecord
    has_many :boats through :rentals
end
