class User < ActiveRecord::Base
  has_secure_password

  attr_accessible :email, :role, :password, :password_confirmation

  validates_uniqueness_of :email
end
