class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
   
  # Add your routes here
  get "/" do
    { message: "The GET route works! Let's begin." }.to_json
  end
  get "/characters" do
      characters = Character.all
      characters.to_json
end

  get "/characters/:id" do
    character = Character.find_by(id: params[:id])
    if character
        character.to_json
    else
        {error: "Character does not exist"}.to_json
    end
end

get "/characters/:id/comics" do
    character = Character.find_by(id: params[:id])
    if character
        character.comics.to_json
    else
        {error: "Character does not exist"}.to_json
    end
end

post "/characters" do
    character = Character.create(
        name: params[:name],
        alter_ego: params[:alter_ego],
        description: params[:description],
        powers: params[:powers]
    )
    if character.id
        character.to_json
    else
        {error: comic.errors.full_messages.to_sentence}.to_json
    end
end

delete "/characters/:id" do
    character = Character.find_by(id: params[:id])
    if character
        character.destroy
        character.to_json
    else
        {error: "Character does not exist"}.to_json
    end

end
get "/comics" do
        comics = Comic.all
        comics.to_json
    end

    get "/comics/:id" do
        comic = Comic.find_by(id: params[:id])
        if comic
            comic.to_json
        else
            {error: "Comic does not exist"}.to_json
        end
    end

    post "/comics" do
        comic = Comic.create(
            title: params[:title],
            publisher: params[:publisher],
            issues: params[:issues],
            release_date: params[:release_date],
            synopsis: params[:synopsis],
            writer: params[:writer],
            artist: params[:artist],
            character_id: params[:character_id]
        )
        if comic.id
            comic.to_json
        else
            {error: comic.errors.full_messages.to_sentence}.to_json
        end
    end

    delete "/comics/:id" do
        comic = Comic.find_by(id: params[:id])
        if comic
            comic.destroy
            comic.to_json
        else
            {error: "Comic does not exist"}.to_json
        end
    end






end
