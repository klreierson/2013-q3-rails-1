require '../dvc-sinatra.rb'

get "/" do
	@entries = EncyclopediaEntry.all
	halt erb (:index)
end

get "/details/:id" do
	@entry = EncyclopediaEntry.find(params:(:id))
	halt erb (:details)
end

