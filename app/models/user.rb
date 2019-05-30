class User < ApplicationRecord
  rolify
  include DeviseTokenAuth::Concerns::User

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  # devise :database_authenticatable, :registerable,
  #        :recoverable, :rememberable, :validatable
  #
  has_many :bids
  after_validation :ensure_uid

  def ensure_uid
    if self.uid.blank?
        self.uid = self.email
    end
  end

end
