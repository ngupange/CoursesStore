class Course < ApplicationRecord
    # Database relationship
    has_many :orders
    has_one_attached :cover

    #Client side form validations sanitizing input
    validates :title, presence: true
    validates :title, uniqueness: true
    validates :classfication, presence: true
    validates :language, presence: true
    validates :status, presence: true
    validates :price, numericality: { greater_than_or_equal_to: 0 }
    validates :instructor, presence: true
    validates :description, presence: true
    validates :cover, presence: true
end
