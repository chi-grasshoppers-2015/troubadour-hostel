require 'bcrypt'

class User < ActiveRecord::Base

  has_many :reviews
  has_many :reservations

  validates :email, presence: true, uniqueness: true

  def password
    @password ||= BCrypt::Password.new(hashed_password)
  end

  def password=(new_password)
    @password = BCrypt::Password.create(new_password)
    self.hashed_password = @password
  end
end
