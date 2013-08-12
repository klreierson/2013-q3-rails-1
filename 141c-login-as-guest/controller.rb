require '../dvc-sinatra.rb'

get "/" do
  halt erb(:login)
end

# TODO: Change this POST handler's code to handle the login as guest checkbox
post "/" do
  if params[:login_as_guest] != nil
    redirect "/welcome"
  end

  if params[:username] != "amy"
    @error = "Unknown username"
    @old_username = params[:username]
    halt erb(:login)
  end

  if params[:password] != "123"
    @error = "Unknown password"
    @old_username = params[:username]
    halt erb(:login)
  end

  redirect "/welcome"
end

get "/welcome" do
  halt erb(:welcome)
end
