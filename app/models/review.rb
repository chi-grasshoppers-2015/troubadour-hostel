class Review < ActiveRecord::Base

  belongs_to :user
  belongs_to :reservation

  validates_presence_of : :body, :user_id

end
