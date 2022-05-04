class Course < ApplicationRecord
    # Database relationship
    has_many :orders
    has_one_attached :cover

    #Client side form validations sanitizing input
    validates :title, presence: true
    validates :classfication, presence: true
    validates :language, presence: true
    validates :status, presence: true
    validates :instructor, presence: true
    validates :description, presence: true
    validates :cover, presence: true, format: {
    with:    %r{\.(gif|jpg|png)\z}i,
    message: 'Uploaded file must be a GIF, JPG or PNG image.'
}
end
