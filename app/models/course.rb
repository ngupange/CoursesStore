class Course < ApplicationRecord
    has_many :orders
    has_one_attached :cover
    validates :title, presence: true
    validates :classfication, presence: true
    validates :language, presence: true
    validates :status, presence: true
    validates :instructor, presence: true
    validates :description, presence: true
    validates :cover, presence: true
end
