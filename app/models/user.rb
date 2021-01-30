class User < ApplicationRecord

  has_secure_password

  enum user_type: [:user, :shelter]

  has_many :pets

  has_many :shelters

end
