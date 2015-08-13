post '/users' do

  if request.xhr?

    p params

    @user = User.find_or_create_by(email: params["wc"]);

    @user.update_attributes(name:params["Ld"], photo_link:params["zt"])

    if @user.valid?
      # session[:id] = @user.id
      content_type :json
      @user.to_json
    else

    end
  else

  end

end


get "/users/:id" do
  @user = User.find(params[:id])
  erb :"/users/show"
end
