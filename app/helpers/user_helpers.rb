helpers do

  def logged_in?
    !session[:id].nil?
  end

  def current_user
    User.find(session[:id])
  end

  def admin?
    current_user.admin == true
  end

end
