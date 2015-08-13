helpers do

  def logged_in?
    !session[:id].nil?
  end

  def current_user
    User.find(session[:id])
  end

end
