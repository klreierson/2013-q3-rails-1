require '../dvc-sinatra.rb'

get "/" do
  @people = Person.order(:id).all
  halt erb(:index)
end

post "/" do

  number = 1


  if params["new_name_#{@number}"] != ""
    new_person = Person.new
    new_person.name = params[:new_name_1]
    new_person.save!
  end

  if params[:new_name_2] != ""
    new_person = Person.new
    new_person.name = params[:new_name_2]
    new_person.save!
  end

  if params[:new_name_3] != ""
    new_person = Person.new
    new_person.name = params[:new_name_3]
    new_person.save!
  end

  redirect "/"
end
