require '../dvc-sinatra.rb'

get "/" do
  @stations = Station.order(:station_name).page(params[:page]).all
  halt erb(:index)
end

get "/planned" do
  @stations = Station.order(status: "planned").page(params[:page]).all
  halt erb(:index)
end