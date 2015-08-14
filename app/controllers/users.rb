

post '/users' do

  if request.xhr?
    token = params[:idToken]
    decoded_token = JWT.decode token, nil, false
    @user = User.find_or_create_by(email: decoded_token["email"])
    @user.update_attributes(name:decoded_token["name"], photo_link: decoded_token["picture"])

    if @user.valid?
      session[:id] = @user.id
      content_type :json
      @user.to_json
    else

    end
  else

  end
end


get '/users/new' do
  @user = User.new
  erb :"/users/new"
end

get "/users/:id/edit" do
  @user = User.find(params[:id])
  erb :"/users/edit"
end

get "/users/:id" do
  @user = User.find(params[:id])
  erb :"/users/show"
end

put "/users/:id" do
  @user = User.find(params[:id])
  @user.update_attributes(params[:user])
  redirect "/users/#{@user.id}"
end
