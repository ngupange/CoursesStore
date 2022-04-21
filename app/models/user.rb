class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :orders
  #users role and initialization for new record __Philios. 
  enum  role: [:user, :super_user, :admin]
  after_initialize :set_default_role, :if => :new_record?
  def set_default_role
    self.role ||= :user
  end

    #Client side form validations sanitizing input
    validates :first_name, presence: true
    validates :last_name, presence: true
end
