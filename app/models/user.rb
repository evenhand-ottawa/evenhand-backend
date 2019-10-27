class User < ApplicationRecord
  has_one :speaker
  before_validation :scrypt_password

  def scrypt_password
    if password_changed?
      self.password = SCrypt::Password.create(self.password)
    end
  end
end
