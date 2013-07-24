require '../dvc-sinatra.rb'

get "/" do
  halt erb(:index)
end

get "/reposts/1" do
	@summary = 'A complex object creation can clutter a controller. It’s better to move it into a dedicated method of the corresponding model.'
  halt erb(:repost1)
end

get "/reposts/2" do
  halt erb(:repost2)
end
