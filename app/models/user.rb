class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  
  # A user can have zero to many orders
  has_many :orders

  # users role and initialization for new record
  enum  role: [:user, :super_user, :admin]
  after_initialize :set_default_role, :if => :new_record?
  
  # Default user role

  def set_default_role
    self.role ||= :user
  end

    #Client side form validations sanitizing input
    validates :first_name, presence: true
    validates :last_name, presence: true
    validates :contact, numericality: { only_integer: true }, :allow_nil => true
    validates :email, uniqueness: true
end
