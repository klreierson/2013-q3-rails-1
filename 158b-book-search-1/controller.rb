require '../dvc-sinatra.rb'

get "/" do
  halt erb(:browse)
end

get "/year/:year" do
  @year = params[:year]
  @books = Book.where(publication_year: @year).all

  @header = "Books published in #{params[:year]}"

  halt erb(:index)
end


get "/topic/:topic" do
	@title = params[:title]
	@topic_name = Javascript
	@topic = Book.where("title ilike ?", "%#{topic}").all

	halt erb(:index)
end
