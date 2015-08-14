class Content < ActiveRecord::Base
  belongs_to :admin, class_name: "User"
  validate :user_is_admin


  def user_is_admin
    if current_user.admin == false
      errors.add(:admin, "You are not authorized")
    end
  end
end
