delete "/sessions" do
  session[:id] = nil
  redirect "/"
end

post "/sessions" do
  @user = User.find_by_email(params[:user][:email])
  if @user.password == params[:user][:password]
    session[:id] = @user.id
    redirect "/"
  else
    redirect "sessions/new"
  end
end

get "/sessions/new" do
  erb :"/sessions/new"
end
