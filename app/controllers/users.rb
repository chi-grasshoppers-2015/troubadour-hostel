

post '/users' do

  if request.xhr?
    split_token = params[:idToken].split(".")
    data = split_token[1]
    decoded_data = Base64.decode64(data) + "}"
    decoded_data =  decoded_data
    user_data = JSON.parse(decoded_data)

    @user = User.find_or_create_by(email: user_data["email"])
    @user.update_attributes(name:user_data["name"], photo_link: user_data["picture"])

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
