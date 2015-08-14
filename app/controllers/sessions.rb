delete "/sessions" do
  session.clear
  if request.xhr?
    200
  else
    redirect "/"
  end
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
  if logged_in?
    redirect '/'
  else
    erb :"/sessions/new"
  end
end
