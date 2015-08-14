class User < ActiveRecord::Base

  has_many :reviews
  has_many :reservations

  validates_uniqueness_of :email

end
