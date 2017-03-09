class Account < ApplicationRecord
  authenticates_with_sorcery!
  has_secure_password

  validates :login,                 presence: true, uniqueness: true
  validates :password,              presence: true
  validates :password_confirmation, presence: true
end
