require '../dvc-sinatra.rb'

get "/" do
  halt erb(:index)
end

get "/example1" do
  halt erb(:layout)
end

get "/example2" do
  @gender = "female"
  @favorite_color = "blue"
  @is_blood_donor = false
  halt erb(:layout)
end

get "/example3" do
  @gender = "male"
  @favorite_color = "green"
  @is_blood_donor = true
  halt erb(:layout)
end