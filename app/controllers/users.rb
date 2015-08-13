require "base64"

post '/users' do

  if request.xhr?
    split_token = params[:idToken].split(".")
    data = split_token[1]
    decoded_data = Base64.decode64(data) + "}"
    decoded_data =  decoded_data
    user_data = JSON.parse(decoded_data)

    @user = User.new(email: user_data["email"], name:user_data["name"], photo_link: user_data["picture"]);
    if @user.save
      session[:id] = @user.id
      p session[:id]
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
