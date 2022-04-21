class Course < ApplicationRecord
    has_many :orders
    has_one_attached :cover
    validates :title, presence: true
end
