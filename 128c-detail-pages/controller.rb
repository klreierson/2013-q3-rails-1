require '../dvc-sinatra.rb'

get "/" do
  # TODO second: add code here to load @apartments
  halt erb(:index)
end

get "/apartments/:id" do
  @apartment= Apartment.find(params[:id])
  halt erb(:show)
end



