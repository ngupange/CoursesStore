class Course < ApplicationRecord
    has_many :orders
    has_one_attached :cover
end
