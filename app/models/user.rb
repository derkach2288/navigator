class User < ApplicationRecord
  # has_many :models
  belongs_to :company
  enum role: {user: 0, publisher: 1, admin: 2}
  after_initialize :set_default_role, :if => :new_record?

  def set_default_role
    self.role ||= :user
  end

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable, :registerable
  devise :invitable, :database_authenticatable,
         :recoverable, :rememberable, :validatable
  # include DeviseInvitable::Inviter
end
