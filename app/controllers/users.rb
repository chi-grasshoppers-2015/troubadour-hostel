post '/users' do

  if request.xhr?
    @user = User.find_or_create_by(email: params["wc"]);

    @user.update_attributes(name:params["Ld"], photo_link:params["zt"])

    if @user.valid?
      content_type :json
      @user.to_json
    else

    end
  else

  end


end
